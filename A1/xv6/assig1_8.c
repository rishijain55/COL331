
#include "types.h"
#include "stat.h"
#include "user.h"

#define NO_OF_PROCS 8
int pid_arr[NO_OF_PROCS];

void printFloat(float f){
	int i = (int)f;
	printf(1,"%d.",i);
	f = f-(float)i;
	f = f*100;
	i = (int)f;
	printf(1,"%d\n",i);
}


int
main(int argc, char *argv[])
{
	if(argc< 2){
		printf(1,"Need type and input filename\n");
		exit();
	}
	char *filename;
	filename=argv[2];
	int type = atoi(argv[1]);
	printf(1,"Type is %d and filename is %s\n",type, filename);

	int tot_sum = 0;	
	float tot_var = 0.0;
	int size=1000;
	short arr[size];
	char c;
	int fd = open(filename, 0);
	for(int i=0; i<size; i++){
		read(fd, &c, 1);
		arr[i]=c-'0';
		read(fd, &c, 1);
	}	
  	close(fd);
	pid_arr[0] = getpid();
	int par_pid = getpid();
	int ind = 0;

	for(int i=1;i<NO_OF_PROCS;i++){
		int npid = fork();
		if(npid == 0){
			ind = i;
			break;
		}
		else{
			pid_arr[i] = npid;
		}
	}
	int curr_pid = getpid();
	if(curr_pid != par_pid){

		int sum = 0;
		for(int i=ind-1;i<size;i+=NO_OF_PROCS-1){
			sum += arr[i];
		}

		send(curr_pid,par_pid,(void*)&sum);
		if(type ==0){
            exit();
        }
        float varsum = 0.0;

        float mean = 0.0;
        void* msg = malloc(8);
		int k =-1;
        while(k==-1){
			k = recv(msg);
		}
        mean = *(float*)msg;
        free(msg);

        for(int i=ind-1;i<size;i+=NO_OF_PROCS-1){
            varsum += ((float)arr[i]-mean)*((float)arr[i]-mean);
        }
        
        send(curr_pid,par_pid,(void*)&varsum);

        exit();

	}
	else{
		int sum = 0;
		for(int i=0;i<NO_OF_PROCS-1;i++){

			void* msg = malloc(8);
			while(recv(msg)==-1);
			int *ps = (int*)msg;
			sum += *ps;
            free(msg);
		}
		tot_sum = sum;
		if(type==1){

        float mean = (float)sum/size;
        pid_arr[0] = -1;
        send_multi(par_pid,pid_arr,(void*)&mean);

        float variance = 0.0;
        for(int i=0;i<NO_OF_PROCS-1;i++){
            void* msg = malloc(8);
            while(recv(msg)==-1);
            float *ps = (float*)msg;
            variance += *ps;
            free(msg);
        }        
        variance = variance/size;
		tot_var = variance;
		}
	}
	for(int i=0;i<NO_OF_PROCS-1;i++){
		wait();
	}

  	if(type==0){ //unicast sum
		printf(1,"Sum of array for file %s is %d\n", filename,tot_sum);
	}
	else{ //multicast mean and variance
		printf(1,"Variance of array for file %s is ", filename);
		printFloat(tot_var);
	}
	exit();
	return 0;

}
