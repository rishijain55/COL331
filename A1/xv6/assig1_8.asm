
_assig1_8:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
}


int
main(int argc, char *argv[])
{
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	push   -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	57                   	push   %edi
   e:	56                   	push   %esi
   f:	53                   	push   %ebx
  10:	51                   	push   %ecx
  11:	83 ec 28             	sub    $0x28,%esp
	if(argc< 2){
  14:	83 39 01             	cmpl   $0x1,(%ecx)
{
  17:	8b 41 04             	mov    0x4(%ecx),%eax
	if(argc< 2){
  1a:	7e 3b                	jle    57 <main+0x57>
		printf(1,"Need type and input filename\n");
		exit();
	}
	char *filename;
	filename=argv[2];
  1c:	8b 70 08             	mov    0x8(%eax),%esi
	int type = atoi(argv[1]);
  1f:	83 ec 0c             	sub    $0xc,%esp
	filename=argv[2];
  22:	89 75 cc             	mov    %esi,-0x34(%ebp)
	int type = atoi(argv[1]);
  25:	ff 70 04             	push   0x4(%eax)
  28:	e8 53 05 00 00       	call   580 <atoi>
  2d:	89 45 d0             	mov    %eax,-0x30(%ebp)
	printf(1,"Type is %d and filename is %s\n",type, filename);
  30:	56                   	push   %esi
  31:	50                   	push   %eax
  32:	68 d0 0a 00 00       	push   $0xad0
  37:	6a 01                	push   $0x1
  39:	e8 42 07 00 00       	call   780 <printf>

	int tot_sum = 0;	
	float tot_var = 0.0;
	int size=1000;
	short arr[size];
  3e:	83 c4 20             	add    $0x20,%esp
  41:	89 e0                	mov    %esp,%eax
  43:	39 c4                	cmp    %eax,%esp
  45:	74 23                	je     6a <main+0x6a>
  47:	81 ec 00 10 00 00    	sub    $0x1000,%esp
  4d:	83 8c 24 fc 0f 00 00 	orl    $0x0,0xffc(%esp)
  54:	00 
  55:	eb ec                	jmp    43 <main+0x43>
		printf(1,"Need type and input filename\n");
  57:	50                   	push   %eax
  58:	50                   	push   %eax
  59:	68 b0 0a 00 00       	push   $0xab0
  5e:	6a 01                	push   $0x1
  60:	e8 1b 07 00 00       	call   780 <printf>
		exit();
  65:	e8 89 05 00 00       	call   5f3 <exit>
	short arr[size];
  6a:	81 ec d0 07 00 00    	sub    $0x7d0,%esp
  70:	83 8c 24 cc 07 00 00 	orl    $0x0,0x7cc(%esp)
  77:	00 
  78:	89 e7                	mov    %esp,%edi
  7a:	89 7d c8             	mov    %edi,-0x38(%ebp)
	char c;
	int fd = open(filename, 0);
  7d:	89 fb                	mov    %edi,%ebx
  7f:	50                   	push   %eax
  80:	50                   	push   %eax
  81:	6a 00                	push   $0x0
  83:	ff 75 cc             	push   -0x34(%ebp)
  86:	e8 a8 05 00 00       	call   633 <open>
  8b:	89 fc                	mov    %edi,%esp
  8d:	89 c6                	mov    %eax,%esi
	for(int i=0; i<size; i++){
  8f:	8d 87 d0 07 00 00    	lea    0x7d0(%edi),%eax
  95:	8d 7d df             	lea    -0x21(%ebp),%edi
  98:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  9b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  9f:	90                   	nop
		read(fd, &c, 1);
  a0:	83 ec 04             	sub    $0x4,%esp
	for(int i=0; i<size; i++){
  a3:	83 c3 02             	add    $0x2,%ebx
		read(fd, &c, 1);
  a6:	6a 01                	push   $0x1
  a8:	57                   	push   %edi
  a9:	56                   	push   %esi
  aa:	e8 5c 05 00 00       	call   60b <read>
		arr[i]=c-'0';
  af:	66 0f be 45 df       	movsbw -0x21(%ebp),%ax
		read(fd, &c, 1);
  b4:	83 c4 0c             	add    $0xc,%esp
		arr[i]=c-'0';
  b7:	83 e8 30             	sub    $0x30,%eax
  ba:	66 89 43 fe          	mov    %ax,-0x2(%ebx)
		read(fd, &c, 1);
  be:	6a 01                	push   $0x1
  c0:	57                   	push   %edi
  c1:	56                   	push   %esi
  c2:	e8 44 05 00 00       	call   60b <read>
	for(int i=0; i<size; i++){
  c7:	83 c4 10             	add    $0x10,%esp
  ca:	3b 5d d4             	cmp    -0x2c(%ebp),%ebx
  cd:	75 d1                	jne    a0 <main+0xa0>
	}	
  	close(fd);
  cf:	83 ec 0c             	sub    $0xc,%esp
	pid_arr[0] = getpid();
	int par_pid = getpid();
	int ind = 0;

	for(int i=1;i<NO_OF_PROCS;i++){
  d2:	bf 01 00 00 00       	mov    $0x1,%edi
  	close(fd);
  d7:	56                   	push   %esi
  d8:	e8 3e 05 00 00       	call   61b <close>
	pid_arr[0] = getpid();
  dd:	e8 91 05 00 00       	call   673 <getpid>
  e2:	a3 80 0e 00 00       	mov    %eax,0xe80
	int par_pid = getpid();
  e7:	e8 87 05 00 00       	call   673 <getpid>
  ec:	83 c4 10             	add    $0x10,%esp
  ef:	89 45 d4             	mov    %eax,-0x2c(%ebp)
	for(int i=1;i<NO_OF_PROCS;i++){
  f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
		int npid = fork();
  f8:	e8 ee 04 00 00       	call   5eb <fork>
		if(npid == 0){
  fd:	85 c0                	test   %eax,%eax
  ff:	74 11                	je     112 <main+0x112>
			ind = i;
			break;
		}
		else{
			pid_arr[i] = npid;
 101:	89 04 bd 80 0e 00 00 	mov    %eax,0xe80(,%edi,4)
	for(int i=1;i<NO_OF_PROCS;i++){
 108:	83 c7 01             	add    $0x1,%edi
 10b:	83 ff 08             	cmp    $0x8,%edi
 10e:	75 e8                	jne    f8 <main+0xf8>
	int ind = 0;
 110:	31 ff                	xor    %edi,%edi
		}
	}
	int curr_pid = getpid();
 112:	e8 5c 05 00 00       	call   673 <getpid>
 117:	89 c3                	mov    %eax,%ebx
	if(curr_pid != par_pid){
 119:	39 45 d4             	cmp    %eax,-0x2c(%ebp)
 11c:	0f 84 b2 00 00 00    	je     1d4 <main+0x1d4>

		int sum = 0;
		for(int i=ind-1;i<size;i+=NO_OF_PROCS-1){
 122:	83 ef 01             	sub    $0x1,%edi
 125:	8b 75 c8             	mov    -0x38(%ebp),%esi
 128:	31 d2                	xor    %edx,%edx
 12a:	89 f8                	mov    %edi,%eax
 12c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
			sum += arr[i];
 130:	0f bf 0c 46          	movswl (%esi,%eax,2),%ecx
		for(int i=ind-1;i<size;i+=NO_OF_PROCS-1){
 134:	83 c0 07             	add    $0x7,%eax
			sum += arr[i];
 137:	01 ca                	add    %ecx,%edx
		for(int i=ind-1;i<size;i+=NO_OF_PROCS-1){
 139:	3d e7 03 00 00       	cmp    $0x3e7,%eax
 13e:	7e f0                	jle    130 <main+0x130>
 140:	89 55 e0             	mov    %edx,-0x20(%ebp)
		}

		send(curr_pid,par_pid,(void*)&sum);
 143:	50                   	push   %eax
 144:	8d 45 e0             	lea    -0x20(%ebp),%eax
 147:	50                   	push   %eax
 148:	ff 75 d4             	push   -0x2c(%ebp)
 14b:	53                   	push   %ebx
 14c:	e8 62 05 00 00       	call   6b3 <send>
		if(type ==0){
 151:	83 c4 10             	add    $0x10,%esp
 154:	83 7d d0 00          	cmpl   $0x0,-0x30(%ebp)
 158:	0f 84 f8 00 00 00    	je     256 <main+0x256>
            exit();
        }
        float varsum = 0.0;

        float mean = 0.0;
        void* msg = malloc(8);
 15e:	83 ec 0c             	sub    $0xc,%esp
        float varsum = 0.0;
 161:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
        void* msg = malloc(8);
 168:	6a 08                	push   $0x8
 16a:	e8 41 08 00 00       	call   9b0 <malloc>
 16f:	83 c4 10             	add    $0x10,%esp
 172:	89 c6                	mov    %eax,%esi
		int k =-1;
        while(k==-1){
 174:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
			k = recv(msg);
 178:	83 ec 0c             	sub    $0xc,%esp
 17b:	56                   	push   %esi
 17c:	e8 3a 05 00 00       	call   6bb <recv>
        while(k==-1){
 181:	83 c4 10             	add    $0x10,%esp
 184:	83 f8 ff             	cmp    $0xffffffff,%eax
 187:	74 ef                	je     178 <main+0x178>
		}
        mean = *(float*)msg;
 189:	d9 06                	flds   (%esi)
        free(msg);
 18b:	83 ec 0c             	sub    $0xc,%esp
        mean = *(float*)msg;
 18e:	d9 5d d0             	fstps  -0x30(%ebp)
        free(msg);
 191:	56                   	push   %esi
 192:	e8 89 07 00 00       	call   920 <free>

        for(int i=ind-1;i<size;i+=NO_OF_PROCS-1){
 197:	d9 45 e4             	flds   -0x1c(%ebp)
 19a:	d9 45 d0             	flds   -0x30(%ebp)
 19d:	83 c4 10             	add    $0x10,%esp
 1a0:	8b 45 c8             	mov    -0x38(%ebp),%eax
 1a3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 1a7:	90                   	nop
            varsum += ((float)arr[i]-mean)*((float)arr[i]-mean);
 1a8:	df 04 78             	filds  (%eax,%edi,2)
        for(int i=ind-1;i<size;i+=NO_OF_PROCS-1){
 1ab:	83 c7 07             	add    $0x7,%edi
            varsum += ((float)arr[i]-mean)*((float)arr[i]-mean);
 1ae:	d8 e1                	fsub   %st(1),%st
 1b0:	d8 c8                	fmul   %st(0),%st
 1b2:	de c2                	faddp  %st,%st(2)
        for(int i=ind-1;i<size;i+=NO_OF_PROCS-1){
 1b4:	81 ff e7 03 00 00    	cmp    $0x3e7,%edi
 1ba:	7e ec                	jle    1a8 <main+0x1a8>
 1bc:	dd d8                	fstp   %st(0)
        }
        
        send(curr_pid,par_pid,(void*)&varsum);
 1be:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 1c1:	d9 5d e4             	fstps  -0x1c(%ebp)
 1c4:	56                   	push   %esi
 1c5:	50                   	push   %eax
 1c6:	ff 75 d4             	push   -0x2c(%ebp)
 1c9:	53                   	push   %ebx
 1ca:	e8 e4 04 00 00       	call   6b3 <send>

        exit();
 1cf:	e8 1f 04 00 00       	call   5f3 <exit>
 1d4:	be 07 00 00 00       	mov    $0x7,%esi

	}
	else{
		int sum = 0;
 1d9:	31 ff                	xor    %edi,%edi
 1db:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 1df:	90                   	nop
		for(int i=0;i<NO_OF_PROCS-1;i++){

			void* msg = malloc(8);
 1e0:	83 ec 0c             	sub    $0xc,%esp
 1e3:	6a 08                	push   $0x8
 1e5:	e8 c6 07 00 00       	call   9b0 <malloc>
			while(recv(msg)==-1);
 1ea:	83 c4 10             	add    $0x10,%esp
			void* msg = malloc(8);
 1ed:	89 c3                	mov    %eax,%ebx
			while(recv(msg)==-1);
 1ef:	90                   	nop
 1f0:	83 ec 0c             	sub    $0xc,%esp
 1f3:	53                   	push   %ebx
 1f4:	e8 c2 04 00 00       	call   6bb <recv>
 1f9:	83 c4 10             	add    $0x10,%esp
 1fc:	83 f8 ff             	cmp    $0xffffffff,%eax
 1ff:	74 ef                	je     1f0 <main+0x1f0>
			int *ps = (int*)msg;
			sum += *ps;
            free(msg);
 201:	83 ec 0c             	sub    $0xc,%esp
			sum += *ps;
 204:	03 3b                	add    (%ebx),%edi
            free(msg);
 206:	53                   	push   %ebx
 207:	e8 14 07 00 00       	call   920 <free>
		for(int i=0;i<NO_OF_PROCS-1;i++){
 20c:	83 c4 10             	add    $0x10,%esp
 20f:	83 ee 01             	sub    $0x1,%esi
 212:	75 cc                	jne    1e0 <main+0x1e0>
		}
		tot_sum = sum;
		if(type==1){
 214:	83 7d d0 01          	cmpl   $0x1,-0x30(%ebp)
 218:	74 64                	je     27e <main+0x27e>
        variance = variance/size;
		tot_var = variance;
		}
	}
	for(int i=0;i<NO_OF_PROCS-1;i++){
		wait();
 21a:	e8 dc 03 00 00       	call   5fb <wait>
 21f:	e8 d7 03 00 00       	call   5fb <wait>
 224:	e8 d2 03 00 00       	call   5fb <wait>
 229:	e8 cd 03 00 00       	call   5fb <wait>
 22e:	e8 c8 03 00 00       	call   5fb <wait>
 233:	e8 c3 03 00 00       	call   5fb <wait>
 238:	e8 be 03 00 00       	call   5fb <wait>
	}

  	if(type==0){ //unicast sum
 23d:	83 7d d0 00          	cmpl   $0x0,-0x30(%ebp)
 241:	75 18                	jne    25b <main+0x25b>
		printf(1,"Sum of array for file %s is %d\n", filename,tot_sum);
 243:	57                   	push   %edi
 244:	ff 75 cc             	push   -0x34(%ebp)
 247:	68 f0 0a 00 00       	push   $0xaf0
 24c:	6a 01                	push   $0x1
 24e:	e8 2d 05 00 00       	call   780 <printf>
 253:	83 c4 10             	add    $0x10,%esp
            exit();
 256:	e8 98 03 00 00       	call   5f3 <exit>
	float tot_var = 0.0;
 25b:	d9 ee                	fldz   
 25d:	d9 5d d4             	fstps  -0x2c(%ebp)
	}
	else{ //multicast mean and variance
		printf(1,"Variance of array for file %s is ", filename);
 260:	50                   	push   %eax
 261:	ff 75 cc             	push   -0x34(%ebp)
 264:	68 10 0b 00 00       	push   $0xb10
 269:	6a 01                	push   $0x1
 26b:	e8 10 05 00 00       	call   780 <printf>
		printFloat(tot_var);
 270:	5a                   	pop    %edx
 271:	ff 75 d4             	push   -0x2c(%ebp)
 274:	e8 b7 00 00 00       	call   330 <printFloat>
 279:	83 c4 10             	add    $0x10,%esp
 27c:	eb d8                	jmp    256 <main+0x256>
        float mean = (float)sum/size;
 27e:	89 7d d0             	mov    %edi,-0x30(%ebp)
 281:	db 45 d0             	fildl  -0x30(%ebp)
        send_multi(par_pid,pid_arr,(void*)&mean);
 284:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 287:	be 07 00 00 00       	mov    $0x7,%esi
        float mean = (float)sum/size;
 28c:	d8 35 38 0b 00 00    	fdivs  0xb38
        pid_arr[0] = -1;
 292:	c7 05 80 0e 00 00 ff 	movl   $0xffffffff,0xe80
 299:	ff ff ff 
        float mean = (float)sum/size;
 29c:	d9 5d e4             	fstps  -0x1c(%ebp)
        send_multi(par_pid,pid_arr,(void*)&mean);
 29f:	51                   	push   %ecx
 2a0:	50                   	push   %eax
 2a1:	68 80 0e 00 00       	push   $0xe80
 2a6:	ff 75 d4             	push   -0x2c(%ebp)
 2a9:	e8 15 04 00 00       	call   6c3 <send_multi>
 2ae:	83 c4 10             	add    $0x10,%esp
        float variance = 0.0;
 2b1:	d9 ee                	fldz   
 2b3:	d9 5d d4             	fstps  -0x2c(%ebp)
            void* msg = malloc(8);
 2b6:	83 ec 0c             	sub    $0xc,%esp
 2b9:	6a 08                	push   $0x8
 2bb:	e8 f0 06 00 00       	call   9b0 <malloc>
            while(recv(msg)==-1);
 2c0:	83 c4 10             	add    $0x10,%esp
            void* msg = malloc(8);
 2c3:	89 c3                	mov    %eax,%ebx
            while(recv(msg)==-1);
 2c5:	8d 76 00             	lea    0x0(%esi),%esi
 2c8:	83 ec 0c             	sub    $0xc,%esp
 2cb:	53                   	push   %ebx
 2cc:	e8 ea 03 00 00       	call   6bb <recv>
 2d1:	83 c4 10             	add    $0x10,%esp
 2d4:	83 f8 ff             	cmp    $0xffffffff,%eax
 2d7:	74 ef                	je     2c8 <main+0x2c8>
            variance += *ps;
 2d9:	d9 45 d4             	flds   -0x2c(%ebp)
 2dc:	d8 03                	fadds  (%ebx)
            free(msg);
 2de:	83 ec 0c             	sub    $0xc,%esp
            variance += *ps;
 2e1:	d9 5d d4             	fstps  -0x2c(%ebp)
            free(msg);
 2e4:	53                   	push   %ebx
 2e5:	e8 36 06 00 00       	call   920 <free>
        for(int i=0;i<NO_OF_PROCS-1;i++){
 2ea:	83 c4 10             	add    $0x10,%esp
 2ed:	83 ee 01             	sub    $0x1,%esi
 2f0:	75 c4                	jne    2b6 <main+0x2b6>
        variance = variance/size;
 2f2:	d9 45 d4             	flds   -0x2c(%ebp)
 2f5:	d8 35 38 0b 00 00    	fdivs  0xb38
 2fb:	d9 5d d4             	fstps  -0x2c(%ebp)
		wait();
 2fe:	e8 f8 02 00 00       	call   5fb <wait>
 303:	e8 f3 02 00 00       	call   5fb <wait>
 308:	e8 ee 02 00 00       	call   5fb <wait>
 30d:	e8 e9 02 00 00       	call   5fb <wait>
 312:	e8 e4 02 00 00       	call   5fb <wait>
 317:	e8 df 02 00 00       	call   5fb <wait>
 31c:	e8 da 02 00 00       	call   5fb <wait>
  	if(type==0){ //unicast sum
 321:	e9 3a ff ff ff       	jmp    260 <main+0x260>
 326:	66 90                	xchg   %ax,%ax
 328:	66 90                	xchg   %ax,%ax
 32a:	66 90                	xchg   %ax,%ax
 32c:	66 90                	xchg   %ax,%ax
 32e:	66 90                	xchg   %ax,%ax

00000330 <printFloat>:
void printFloat(float f){
 330:	55                   	push   %ebp
 331:	89 e5                	mov    %esp,%ebp
 333:	83 ec 1c             	sub    $0x1c,%esp
	int i = (int)f;
 336:	d9 7d f6             	fnstcw -0xa(%ebp)
 339:	d9 45 08             	flds   0x8(%ebp)
 33c:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
 340:	80 cc 0c             	or     $0xc,%ah
 343:	66 89 45 f4          	mov    %ax,-0xc(%ebp)
 347:	d9 6d f4             	fldcw  -0xc(%ebp)
 34a:	db 5d f0             	fistpl -0x10(%ebp)
 34d:	d9 6d f6             	fldcw  -0xa(%ebp)
	printf(1,"%d.",i);
 350:	ff 75 f0             	push   -0x10(%ebp)
 353:	68 a8 0a 00 00       	push   $0xaa8
 358:	6a 01                	push   $0x1
 35a:	e8 21 04 00 00       	call   780 <printf>
	f = f-(float)i;
 35f:	db 45 f0             	fildl  -0x10(%ebp)
 362:	d8 6d 08             	fsubrs 0x8(%ebp)
	printf(1,"%d\n",i);
 365:	83 c4 0c             	add    $0xc,%esp
	i = (int)f;
 368:	d9 7d f6             	fnstcw -0xa(%ebp)
	f = f*100;
 36b:	d8 0d 34 0b 00 00    	fmuls  0xb34
	i = (int)f;
 371:	0f b7 45 f6          	movzwl -0xa(%ebp),%eax
 375:	80 cc 0c             	or     $0xc,%ah
 378:	66 89 45 f4          	mov    %ax,-0xc(%ebp)
 37c:	d9 6d f4             	fldcw  -0xc(%ebp)
 37f:	db 5d f0             	fistpl -0x10(%ebp)
 382:	d9 6d f6             	fldcw  -0xa(%ebp)
 385:	8b 45 f0             	mov    -0x10(%ebp),%eax
	printf(1,"%d\n",i);
 388:	50                   	push   %eax
 389:	68 ac 0a 00 00       	push   $0xaac
 38e:	6a 01                	push   $0x1
 390:	e8 eb 03 00 00       	call   780 <printf>
}
 395:	83 c4 10             	add    $0x10,%esp
 398:	c9                   	leave  
 399:	c3                   	ret    
 39a:	66 90                	xchg   %ax,%ax
 39c:	66 90                	xchg   %ax,%ax
 39e:	66 90                	xchg   %ax,%ax

000003a0 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
 3a0:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 3a1:	31 c0                	xor    %eax,%eax
{
 3a3:	89 e5                	mov    %esp,%ebp
 3a5:	53                   	push   %ebx
 3a6:	8b 4d 08             	mov    0x8(%ebp),%ecx
 3a9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 3ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
 3b0:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
 3b4:	88 14 01             	mov    %dl,(%ecx,%eax,1)
 3b7:	83 c0 01             	add    $0x1,%eax
 3ba:	84 d2                	test   %dl,%dl
 3bc:	75 f2                	jne    3b0 <strcpy+0x10>
    ;
  return os;
}
 3be:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 3c1:	89 c8                	mov    %ecx,%eax
 3c3:	c9                   	leave  
 3c4:	c3                   	ret    
 3c5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000003d0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 3d0:	55                   	push   %ebp
 3d1:	89 e5                	mov    %esp,%ebp
 3d3:	53                   	push   %ebx
 3d4:	8b 55 08             	mov    0x8(%ebp),%edx
 3d7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 3da:	0f b6 02             	movzbl (%edx),%eax
 3dd:	84 c0                	test   %al,%al
 3df:	75 17                	jne    3f8 <strcmp+0x28>
 3e1:	eb 3a                	jmp    41d <strcmp+0x4d>
 3e3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3e7:	90                   	nop
 3e8:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
 3ec:	83 c2 01             	add    $0x1,%edx
 3ef:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
 3f2:	84 c0                	test   %al,%al
 3f4:	74 1a                	je     410 <strcmp+0x40>
    p++, q++;
 3f6:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
 3f8:	0f b6 19             	movzbl (%ecx),%ebx
 3fb:	38 c3                	cmp    %al,%bl
 3fd:	74 e9                	je     3e8 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
 3ff:	29 d8                	sub    %ebx,%eax
}
 401:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 404:	c9                   	leave  
 405:	c3                   	ret    
 406:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 40d:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
 410:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 414:	31 c0                	xor    %eax,%eax
 416:	29 d8                	sub    %ebx,%eax
}
 418:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 41b:	c9                   	leave  
 41c:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
 41d:	0f b6 19             	movzbl (%ecx),%ebx
 420:	31 c0                	xor    %eax,%eax
 422:	eb db                	jmp    3ff <strcmp+0x2f>
 424:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 42b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 42f:	90                   	nop

00000430 <strlen>:

uint
strlen(const char *s)
{
 430:	55                   	push   %ebp
 431:	89 e5                	mov    %esp,%ebp
 433:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
 436:	80 3a 00             	cmpb   $0x0,(%edx)
 439:	74 15                	je     450 <strlen+0x20>
 43b:	31 c0                	xor    %eax,%eax
 43d:	8d 76 00             	lea    0x0(%esi),%esi
 440:	83 c0 01             	add    $0x1,%eax
 443:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 447:	89 c1                	mov    %eax,%ecx
 449:	75 f5                	jne    440 <strlen+0x10>
    ;
  return n;
}
 44b:	89 c8                	mov    %ecx,%eax
 44d:	5d                   	pop    %ebp
 44e:	c3                   	ret    
 44f:	90                   	nop
  for(n = 0; s[n]; n++)
 450:	31 c9                	xor    %ecx,%ecx
}
 452:	5d                   	pop    %ebp
 453:	89 c8                	mov    %ecx,%eax
 455:	c3                   	ret    
 456:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 45d:	8d 76 00             	lea    0x0(%esi),%esi

00000460 <memset>:

void*
memset(void *dst, int c, uint n)
{
 460:	55                   	push   %ebp
 461:	89 e5                	mov    %esp,%ebp
 463:	57                   	push   %edi
 464:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 467:	8b 4d 10             	mov    0x10(%ebp),%ecx
 46a:	8b 45 0c             	mov    0xc(%ebp),%eax
 46d:	89 d7                	mov    %edx,%edi
 46f:	fc                   	cld    
 470:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 472:	8b 7d fc             	mov    -0x4(%ebp),%edi
 475:	89 d0                	mov    %edx,%eax
 477:	c9                   	leave  
 478:	c3                   	ret    
 479:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000480 <strchr>:

char*
strchr(const char *s, char c)
{
 480:	55                   	push   %ebp
 481:	89 e5                	mov    %esp,%ebp
 483:	8b 45 08             	mov    0x8(%ebp),%eax
 486:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 48a:	0f b6 10             	movzbl (%eax),%edx
 48d:	84 d2                	test   %dl,%dl
 48f:	75 12                	jne    4a3 <strchr+0x23>
 491:	eb 1d                	jmp    4b0 <strchr+0x30>
 493:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 497:	90                   	nop
 498:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 49c:	83 c0 01             	add    $0x1,%eax
 49f:	84 d2                	test   %dl,%dl
 4a1:	74 0d                	je     4b0 <strchr+0x30>
    if(*s == c)
 4a3:	38 d1                	cmp    %dl,%cl
 4a5:	75 f1                	jne    498 <strchr+0x18>
      return (char*)s;
  return 0;
}
 4a7:	5d                   	pop    %ebp
 4a8:	c3                   	ret    
 4a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 4b0:	31 c0                	xor    %eax,%eax
}
 4b2:	5d                   	pop    %ebp
 4b3:	c3                   	ret    
 4b4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 4bb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 4bf:	90                   	nop

000004c0 <gets>:

char*
gets(char *buf, int max)
{
 4c0:	55                   	push   %ebp
 4c1:	89 e5                	mov    %esp,%ebp
 4c3:	57                   	push   %edi
 4c4:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 4c5:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 4c8:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 4c9:	31 db                	xor    %ebx,%ebx
{
 4cb:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 4ce:	eb 27                	jmp    4f7 <gets+0x37>
    cc = read(0, &c, 1);
 4d0:	83 ec 04             	sub    $0x4,%esp
 4d3:	6a 01                	push   $0x1
 4d5:	57                   	push   %edi
 4d6:	6a 00                	push   $0x0
 4d8:	e8 2e 01 00 00       	call   60b <read>
    if(cc < 1)
 4dd:	83 c4 10             	add    $0x10,%esp
 4e0:	85 c0                	test   %eax,%eax
 4e2:	7e 1d                	jle    501 <gets+0x41>
      break;
    buf[i++] = c;
 4e4:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 4e8:	8b 55 08             	mov    0x8(%ebp),%edx
 4eb:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 4ef:	3c 0a                	cmp    $0xa,%al
 4f1:	74 1d                	je     510 <gets+0x50>
 4f3:	3c 0d                	cmp    $0xd,%al
 4f5:	74 19                	je     510 <gets+0x50>
  for(i=0; i+1 < max; ){
 4f7:	89 de                	mov    %ebx,%esi
 4f9:	83 c3 01             	add    $0x1,%ebx
 4fc:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 4ff:	7c cf                	jl     4d0 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 501:	8b 45 08             	mov    0x8(%ebp),%eax
 504:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 508:	8d 65 f4             	lea    -0xc(%ebp),%esp
 50b:	5b                   	pop    %ebx
 50c:	5e                   	pop    %esi
 50d:	5f                   	pop    %edi
 50e:	5d                   	pop    %ebp
 50f:	c3                   	ret    
  buf[i] = '\0';
 510:	8b 45 08             	mov    0x8(%ebp),%eax
 513:	89 de                	mov    %ebx,%esi
 515:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 519:	8d 65 f4             	lea    -0xc(%ebp),%esp
 51c:	5b                   	pop    %ebx
 51d:	5e                   	pop    %esi
 51e:	5f                   	pop    %edi
 51f:	5d                   	pop    %ebp
 520:	c3                   	ret    
 521:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 528:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 52f:	90                   	nop

00000530 <stat>:

int
stat(const char *n, struct stat *st)
{
 530:	55                   	push   %ebp
 531:	89 e5                	mov    %esp,%ebp
 533:	56                   	push   %esi
 534:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 535:	83 ec 08             	sub    $0x8,%esp
 538:	6a 00                	push   $0x0
 53a:	ff 75 08             	push   0x8(%ebp)
 53d:	e8 f1 00 00 00       	call   633 <open>
  if(fd < 0)
 542:	83 c4 10             	add    $0x10,%esp
 545:	85 c0                	test   %eax,%eax
 547:	78 27                	js     570 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 549:	83 ec 08             	sub    $0x8,%esp
 54c:	ff 75 0c             	push   0xc(%ebp)
 54f:	89 c3                	mov    %eax,%ebx
 551:	50                   	push   %eax
 552:	e8 f4 00 00 00       	call   64b <fstat>
  close(fd);
 557:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 55a:	89 c6                	mov    %eax,%esi
  close(fd);
 55c:	e8 ba 00 00 00       	call   61b <close>
  return r;
 561:	83 c4 10             	add    $0x10,%esp
}
 564:	8d 65 f8             	lea    -0x8(%ebp),%esp
 567:	89 f0                	mov    %esi,%eax
 569:	5b                   	pop    %ebx
 56a:	5e                   	pop    %esi
 56b:	5d                   	pop    %ebp
 56c:	c3                   	ret    
 56d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 570:	be ff ff ff ff       	mov    $0xffffffff,%esi
 575:	eb ed                	jmp    564 <stat+0x34>
 577:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 57e:	66 90                	xchg   %ax,%ax

00000580 <atoi>:

int
atoi(const char *s)
{
 580:	55                   	push   %ebp
 581:	89 e5                	mov    %esp,%ebp
 583:	53                   	push   %ebx
 584:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 587:	0f be 02             	movsbl (%edx),%eax
 58a:	8d 48 d0             	lea    -0x30(%eax),%ecx
 58d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 590:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 595:	77 1e                	ja     5b5 <atoi+0x35>
 597:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 59e:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 5a0:	83 c2 01             	add    $0x1,%edx
 5a3:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 5a6:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 5aa:	0f be 02             	movsbl (%edx),%eax
 5ad:	8d 58 d0             	lea    -0x30(%eax),%ebx
 5b0:	80 fb 09             	cmp    $0x9,%bl
 5b3:	76 eb                	jbe    5a0 <atoi+0x20>
  return n;
}
 5b5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 5b8:	89 c8                	mov    %ecx,%eax
 5ba:	c9                   	leave  
 5bb:	c3                   	ret    
 5bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000005c0 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 5c0:	55                   	push   %ebp
 5c1:	89 e5                	mov    %esp,%ebp
 5c3:	57                   	push   %edi
 5c4:	8b 45 10             	mov    0x10(%ebp),%eax
 5c7:	8b 55 08             	mov    0x8(%ebp),%edx
 5ca:	56                   	push   %esi
 5cb:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 5ce:	85 c0                	test   %eax,%eax
 5d0:	7e 13                	jle    5e5 <memmove+0x25>
 5d2:	01 d0                	add    %edx,%eax
  dst = vdst;
 5d4:	89 d7                	mov    %edx,%edi
 5d6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5dd:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 5e0:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 5e1:	39 f8                	cmp    %edi,%eax
 5e3:	75 fb                	jne    5e0 <memmove+0x20>
  return vdst;
}
 5e5:	5e                   	pop    %esi
 5e6:	89 d0                	mov    %edx,%eax
 5e8:	5f                   	pop    %edi
 5e9:	5d                   	pop    %ebp
 5ea:	c3                   	ret    

000005eb <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 5eb:	b8 01 00 00 00       	mov    $0x1,%eax
 5f0:	cd 40                	int    $0x40
 5f2:	c3                   	ret    

000005f3 <exit>:
SYSCALL(exit)
 5f3:	b8 02 00 00 00       	mov    $0x2,%eax
 5f8:	cd 40                	int    $0x40
 5fa:	c3                   	ret    

000005fb <wait>:
SYSCALL(wait)
 5fb:	b8 03 00 00 00       	mov    $0x3,%eax
 600:	cd 40                	int    $0x40
 602:	c3                   	ret    

00000603 <pipe>:
SYSCALL(pipe)
 603:	b8 04 00 00 00       	mov    $0x4,%eax
 608:	cd 40                	int    $0x40
 60a:	c3                   	ret    

0000060b <read>:
SYSCALL(read)
 60b:	b8 05 00 00 00       	mov    $0x5,%eax
 610:	cd 40                	int    $0x40
 612:	c3                   	ret    

00000613 <write>:
SYSCALL(write)
 613:	b8 10 00 00 00       	mov    $0x10,%eax
 618:	cd 40                	int    $0x40
 61a:	c3                   	ret    

0000061b <close>:
SYSCALL(close)
 61b:	b8 15 00 00 00       	mov    $0x15,%eax
 620:	cd 40                	int    $0x40
 622:	c3                   	ret    

00000623 <kill>:
SYSCALL(kill)
 623:	b8 06 00 00 00       	mov    $0x6,%eax
 628:	cd 40                	int    $0x40
 62a:	c3                   	ret    

0000062b <exec>:
SYSCALL(exec)
 62b:	b8 07 00 00 00       	mov    $0x7,%eax
 630:	cd 40                	int    $0x40
 632:	c3                   	ret    

00000633 <open>:
SYSCALL(open)
 633:	b8 0f 00 00 00       	mov    $0xf,%eax
 638:	cd 40                	int    $0x40
 63a:	c3                   	ret    

0000063b <mknod>:
SYSCALL(mknod)
 63b:	b8 11 00 00 00       	mov    $0x11,%eax
 640:	cd 40                	int    $0x40
 642:	c3                   	ret    

00000643 <unlink>:
SYSCALL(unlink)
 643:	b8 12 00 00 00       	mov    $0x12,%eax
 648:	cd 40                	int    $0x40
 64a:	c3                   	ret    

0000064b <fstat>:
SYSCALL(fstat)
 64b:	b8 08 00 00 00       	mov    $0x8,%eax
 650:	cd 40                	int    $0x40
 652:	c3                   	ret    

00000653 <link>:
SYSCALL(link)
 653:	b8 13 00 00 00       	mov    $0x13,%eax
 658:	cd 40                	int    $0x40
 65a:	c3                   	ret    

0000065b <mkdir>:
SYSCALL(mkdir)
 65b:	b8 14 00 00 00       	mov    $0x14,%eax
 660:	cd 40                	int    $0x40
 662:	c3                   	ret    

00000663 <chdir>:
SYSCALL(chdir)
 663:	b8 09 00 00 00       	mov    $0x9,%eax
 668:	cd 40                	int    $0x40
 66a:	c3                   	ret    

0000066b <dup>:
SYSCALL(dup)
 66b:	b8 0a 00 00 00       	mov    $0xa,%eax
 670:	cd 40                	int    $0x40
 672:	c3                   	ret    

00000673 <getpid>:
SYSCALL(getpid)
 673:	b8 0b 00 00 00       	mov    $0xb,%eax
 678:	cd 40                	int    $0x40
 67a:	c3                   	ret    

0000067b <sbrk>:
SYSCALL(sbrk)
 67b:	b8 0c 00 00 00       	mov    $0xc,%eax
 680:	cd 40                	int    $0x40
 682:	c3                   	ret    

00000683 <sleep>:
SYSCALL(sleep)
 683:	b8 0d 00 00 00       	mov    $0xd,%eax
 688:	cd 40                	int    $0x40
 68a:	c3                   	ret    

0000068b <uptime>:
SYSCALL(uptime)
 68b:	b8 0e 00 00 00       	mov    $0xe,%eax
 690:	cd 40                	int    $0x40
 692:	c3                   	ret    

00000693 <add>:
SYSCALL(add)
 693:	b8 16 00 00 00       	mov    $0x16,%eax
 698:	cd 40                	int    $0x40
 69a:	c3                   	ret    

0000069b <toggle>:
SYSCALL(toggle)
 69b:	b8 17 00 00 00       	mov    $0x17,%eax
 6a0:	cd 40                	int    $0x40
 6a2:	c3                   	ret    

000006a3 <ps>:
SYSCALL(ps)
 6a3:	b8 18 00 00 00       	mov    $0x18,%eax
 6a8:	cd 40                	int    $0x40
 6aa:	c3                   	ret    

000006ab <print_count>:
SYSCALL(print_count)
 6ab:	b8 19 00 00 00       	mov    $0x19,%eax
 6b0:	cd 40                	int    $0x40
 6b2:	c3                   	ret    

000006b3 <send>:
SYSCALL(send)
 6b3:	b8 1a 00 00 00       	mov    $0x1a,%eax
 6b8:	cd 40                	int    $0x40
 6ba:	c3                   	ret    

000006bb <recv>:
SYSCALL(recv)
 6bb:	b8 1b 00 00 00       	mov    $0x1b,%eax
 6c0:	cd 40                	int    $0x40
 6c2:	c3                   	ret    

000006c3 <send_multi>:
 6c3:	b8 1c 00 00 00       	mov    $0x1c,%eax
 6c8:	cd 40                	int    $0x40
 6ca:	c3                   	ret    
 6cb:	66 90                	xchg   %ax,%ax
 6cd:	66 90                	xchg   %ax,%ax
 6cf:	90                   	nop

000006d0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 6d0:	55                   	push   %ebp
 6d1:	89 e5                	mov    %esp,%ebp
 6d3:	57                   	push   %edi
 6d4:	56                   	push   %esi
 6d5:	53                   	push   %ebx
 6d6:	83 ec 3c             	sub    $0x3c,%esp
 6d9:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 6dc:	89 d1                	mov    %edx,%ecx
{
 6de:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 6e1:	85 d2                	test   %edx,%edx
 6e3:	0f 89 7f 00 00 00    	jns    768 <printint+0x98>
 6e9:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 6ed:	74 79                	je     768 <printint+0x98>
    neg = 1;
 6ef:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 6f6:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 6f8:	31 db                	xor    %ebx,%ebx
 6fa:	8d 75 d7             	lea    -0x29(%ebp),%esi
 6fd:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 700:	89 c8                	mov    %ecx,%eax
 702:	31 d2                	xor    %edx,%edx
 704:	89 cf                	mov    %ecx,%edi
 706:	f7 75 c4             	divl   -0x3c(%ebp)
 709:	0f b6 92 9c 0b 00 00 	movzbl 0xb9c(%edx),%edx
 710:	89 45 c0             	mov    %eax,-0x40(%ebp)
 713:	89 d8                	mov    %ebx,%eax
 715:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 718:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 71b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 71e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 721:	76 dd                	jbe    700 <printint+0x30>
  if(neg)
 723:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 726:	85 c9                	test   %ecx,%ecx
 728:	74 0c                	je     736 <printint+0x66>
    buf[i++] = '-';
 72a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 72f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 731:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 736:	8b 7d b8             	mov    -0x48(%ebp),%edi
 739:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 73d:	eb 07                	jmp    746 <printint+0x76>
 73f:	90                   	nop
    putc(fd, buf[i]);
 740:	0f b6 13             	movzbl (%ebx),%edx
 743:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 746:	83 ec 04             	sub    $0x4,%esp
 749:	88 55 d7             	mov    %dl,-0x29(%ebp)
 74c:	6a 01                	push   $0x1
 74e:	56                   	push   %esi
 74f:	57                   	push   %edi
 750:	e8 be fe ff ff       	call   613 <write>
  while(--i >= 0)
 755:	83 c4 10             	add    $0x10,%esp
 758:	39 de                	cmp    %ebx,%esi
 75a:	75 e4                	jne    740 <printint+0x70>
}
 75c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 75f:	5b                   	pop    %ebx
 760:	5e                   	pop    %esi
 761:	5f                   	pop    %edi
 762:	5d                   	pop    %ebp
 763:	c3                   	ret    
 764:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 768:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 76f:	eb 87                	jmp    6f8 <printint+0x28>
 771:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 778:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 77f:	90                   	nop

00000780 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 780:	55                   	push   %ebp
 781:	89 e5                	mov    %esp,%ebp
 783:	57                   	push   %edi
 784:	56                   	push   %esi
 785:	53                   	push   %ebx
 786:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 789:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 78c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 78f:	0f b6 13             	movzbl (%ebx),%edx
 792:	84 d2                	test   %dl,%dl
 794:	74 6a                	je     800 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 796:	8d 45 10             	lea    0x10(%ebp),%eax
 799:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 79c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 79f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 7a1:	89 45 d0             	mov    %eax,-0x30(%ebp)
 7a4:	eb 36                	jmp    7dc <printf+0x5c>
 7a6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 7ad:	8d 76 00             	lea    0x0(%esi),%esi
 7b0:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 7b3:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 7b8:	83 f8 25             	cmp    $0x25,%eax
 7bb:	74 15                	je     7d2 <printf+0x52>
  write(fd, &c, 1);
 7bd:	83 ec 04             	sub    $0x4,%esp
 7c0:	88 55 e7             	mov    %dl,-0x19(%ebp)
 7c3:	6a 01                	push   $0x1
 7c5:	57                   	push   %edi
 7c6:	56                   	push   %esi
 7c7:	e8 47 fe ff ff       	call   613 <write>
 7cc:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 7cf:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 7d2:	0f b6 13             	movzbl (%ebx),%edx
 7d5:	83 c3 01             	add    $0x1,%ebx
 7d8:	84 d2                	test   %dl,%dl
 7da:	74 24                	je     800 <printf+0x80>
    c = fmt[i] & 0xff;
 7dc:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 7df:	85 c9                	test   %ecx,%ecx
 7e1:	74 cd                	je     7b0 <printf+0x30>
      }
    } else if(state == '%'){
 7e3:	83 f9 25             	cmp    $0x25,%ecx
 7e6:	75 ea                	jne    7d2 <printf+0x52>
      if(c == 'd'){
 7e8:	83 f8 25             	cmp    $0x25,%eax
 7eb:	0f 84 07 01 00 00    	je     8f8 <printf+0x178>
 7f1:	83 e8 63             	sub    $0x63,%eax
 7f4:	83 f8 15             	cmp    $0x15,%eax
 7f7:	77 17                	ja     810 <printf+0x90>
 7f9:	ff 24 85 44 0b 00 00 	jmp    *0xb44(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 800:	8d 65 f4             	lea    -0xc(%ebp),%esp
 803:	5b                   	pop    %ebx
 804:	5e                   	pop    %esi
 805:	5f                   	pop    %edi
 806:	5d                   	pop    %ebp
 807:	c3                   	ret    
 808:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 80f:	90                   	nop
  write(fd, &c, 1);
 810:	83 ec 04             	sub    $0x4,%esp
 813:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 816:	6a 01                	push   $0x1
 818:	57                   	push   %edi
 819:	56                   	push   %esi
 81a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 81e:	e8 f0 fd ff ff       	call   613 <write>
        putc(fd, c);
 823:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 827:	83 c4 0c             	add    $0xc,%esp
 82a:	88 55 e7             	mov    %dl,-0x19(%ebp)
 82d:	6a 01                	push   $0x1
 82f:	57                   	push   %edi
 830:	56                   	push   %esi
 831:	e8 dd fd ff ff       	call   613 <write>
        putc(fd, c);
 836:	83 c4 10             	add    $0x10,%esp
      state = 0;
 839:	31 c9                	xor    %ecx,%ecx
 83b:	eb 95                	jmp    7d2 <printf+0x52>
 83d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 840:	83 ec 0c             	sub    $0xc,%esp
 843:	b9 10 00 00 00       	mov    $0x10,%ecx
 848:	6a 00                	push   $0x0
 84a:	8b 45 d0             	mov    -0x30(%ebp),%eax
 84d:	8b 10                	mov    (%eax),%edx
 84f:	89 f0                	mov    %esi,%eax
 851:	e8 7a fe ff ff       	call   6d0 <printint>
        ap++;
 856:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 85a:	83 c4 10             	add    $0x10,%esp
      state = 0;
 85d:	31 c9                	xor    %ecx,%ecx
 85f:	e9 6e ff ff ff       	jmp    7d2 <printf+0x52>
 864:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 868:	8b 45 d0             	mov    -0x30(%ebp),%eax
 86b:	8b 10                	mov    (%eax),%edx
        ap++;
 86d:	83 c0 04             	add    $0x4,%eax
 870:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 873:	85 d2                	test   %edx,%edx
 875:	0f 84 8d 00 00 00    	je     908 <printf+0x188>
        while(*s != 0){
 87b:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 87e:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 880:	84 c0                	test   %al,%al
 882:	0f 84 4a ff ff ff    	je     7d2 <printf+0x52>
 888:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 88b:	89 d3                	mov    %edx,%ebx
 88d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 890:	83 ec 04             	sub    $0x4,%esp
          s++;
 893:	83 c3 01             	add    $0x1,%ebx
 896:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 899:	6a 01                	push   $0x1
 89b:	57                   	push   %edi
 89c:	56                   	push   %esi
 89d:	e8 71 fd ff ff       	call   613 <write>
        while(*s != 0){
 8a2:	0f b6 03             	movzbl (%ebx),%eax
 8a5:	83 c4 10             	add    $0x10,%esp
 8a8:	84 c0                	test   %al,%al
 8aa:	75 e4                	jne    890 <printf+0x110>
      state = 0;
 8ac:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 8af:	31 c9                	xor    %ecx,%ecx
 8b1:	e9 1c ff ff ff       	jmp    7d2 <printf+0x52>
 8b6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8bd:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 8c0:	83 ec 0c             	sub    $0xc,%esp
 8c3:	b9 0a 00 00 00       	mov    $0xa,%ecx
 8c8:	6a 01                	push   $0x1
 8ca:	e9 7b ff ff ff       	jmp    84a <printf+0xca>
 8cf:	90                   	nop
        putc(fd, *ap);
 8d0:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 8d3:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 8d6:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 8d8:	6a 01                	push   $0x1
 8da:	57                   	push   %edi
 8db:	56                   	push   %esi
        putc(fd, *ap);
 8dc:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 8df:	e8 2f fd ff ff       	call   613 <write>
        ap++;
 8e4:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 8e8:	83 c4 10             	add    $0x10,%esp
      state = 0;
 8eb:	31 c9                	xor    %ecx,%ecx
 8ed:	e9 e0 fe ff ff       	jmp    7d2 <printf+0x52>
 8f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 8f8:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 8fb:	83 ec 04             	sub    $0x4,%esp
 8fe:	e9 2a ff ff ff       	jmp    82d <printf+0xad>
 903:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 907:	90                   	nop
          s = "(null)";
 908:	ba 3c 0b 00 00       	mov    $0xb3c,%edx
        while(*s != 0){
 90d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 910:	b8 28 00 00 00       	mov    $0x28,%eax
 915:	89 d3                	mov    %edx,%ebx
 917:	e9 74 ff ff ff       	jmp    890 <printf+0x110>
 91c:	66 90                	xchg   %ax,%ax
 91e:	66 90                	xchg   %ax,%ax

00000920 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 920:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 921:	a1 a0 0e 00 00       	mov    0xea0,%eax
{
 926:	89 e5                	mov    %esp,%ebp
 928:	57                   	push   %edi
 929:	56                   	push   %esi
 92a:	53                   	push   %ebx
 92b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 92e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 931:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 938:	89 c2                	mov    %eax,%edx
 93a:	8b 00                	mov    (%eax),%eax
 93c:	39 ca                	cmp    %ecx,%edx
 93e:	73 30                	jae    970 <free+0x50>
 940:	39 c1                	cmp    %eax,%ecx
 942:	72 04                	jb     948 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 944:	39 c2                	cmp    %eax,%edx
 946:	72 f0                	jb     938 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 948:	8b 73 fc             	mov    -0x4(%ebx),%esi
 94b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 94e:	39 f8                	cmp    %edi,%eax
 950:	74 30                	je     982 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 952:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 955:	8b 42 04             	mov    0x4(%edx),%eax
 958:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 95b:	39 f1                	cmp    %esi,%ecx
 95d:	74 3a                	je     999 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 95f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 961:	5b                   	pop    %ebx
  freep = p;
 962:	89 15 a0 0e 00 00    	mov    %edx,0xea0
}
 968:	5e                   	pop    %esi
 969:	5f                   	pop    %edi
 96a:	5d                   	pop    %ebp
 96b:	c3                   	ret    
 96c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 970:	39 c2                	cmp    %eax,%edx
 972:	72 c4                	jb     938 <free+0x18>
 974:	39 c1                	cmp    %eax,%ecx
 976:	73 c0                	jae    938 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 978:	8b 73 fc             	mov    -0x4(%ebx),%esi
 97b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 97e:	39 f8                	cmp    %edi,%eax
 980:	75 d0                	jne    952 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 982:	03 70 04             	add    0x4(%eax),%esi
 985:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 988:	8b 02                	mov    (%edx),%eax
 98a:	8b 00                	mov    (%eax),%eax
 98c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 98f:	8b 42 04             	mov    0x4(%edx),%eax
 992:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 995:	39 f1                	cmp    %esi,%ecx
 997:	75 c6                	jne    95f <free+0x3f>
    p->s.size += bp->s.size;
 999:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 99c:	89 15 a0 0e 00 00    	mov    %edx,0xea0
    p->s.size += bp->s.size;
 9a2:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 9a5:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 9a8:	89 0a                	mov    %ecx,(%edx)
}
 9aa:	5b                   	pop    %ebx
 9ab:	5e                   	pop    %esi
 9ac:	5f                   	pop    %edi
 9ad:	5d                   	pop    %ebp
 9ae:	c3                   	ret    
 9af:	90                   	nop

000009b0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 9b0:	55                   	push   %ebp
 9b1:	89 e5                	mov    %esp,%ebp
 9b3:	57                   	push   %edi
 9b4:	56                   	push   %esi
 9b5:	53                   	push   %ebx
 9b6:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 9b9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 9bc:	8b 3d a0 0e 00 00    	mov    0xea0,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 9c2:	8d 70 07             	lea    0x7(%eax),%esi
 9c5:	c1 ee 03             	shr    $0x3,%esi
 9c8:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 9cb:	85 ff                	test   %edi,%edi
 9cd:	0f 84 9d 00 00 00    	je     a70 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 9d3:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 9d5:	8b 4a 04             	mov    0x4(%edx),%ecx
 9d8:	39 f1                	cmp    %esi,%ecx
 9da:	73 6a                	jae    a46 <malloc+0x96>
 9dc:	bb 00 10 00 00       	mov    $0x1000,%ebx
 9e1:	39 de                	cmp    %ebx,%esi
 9e3:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 9e6:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 9ed:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 9f0:	eb 17                	jmp    a09 <malloc+0x59>
 9f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 9f8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 9fa:	8b 48 04             	mov    0x4(%eax),%ecx
 9fd:	39 f1                	cmp    %esi,%ecx
 9ff:	73 4f                	jae    a50 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 a01:	8b 3d a0 0e 00 00    	mov    0xea0,%edi
 a07:	89 c2                	mov    %eax,%edx
 a09:	39 d7                	cmp    %edx,%edi
 a0b:	75 eb                	jne    9f8 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 a0d:	83 ec 0c             	sub    $0xc,%esp
 a10:	ff 75 e4             	push   -0x1c(%ebp)
 a13:	e8 63 fc ff ff       	call   67b <sbrk>
  if(p == (char*)-1)
 a18:	83 c4 10             	add    $0x10,%esp
 a1b:	83 f8 ff             	cmp    $0xffffffff,%eax
 a1e:	74 1c                	je     a3c <malloc+0x8c>
  hp->s.size = nu;
 a20:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 a23:	83 ec 0c             	sub    $0xc,%esp
 a26:	83 c0 08             	add    $0x8,%eax
 a29:	50                   	push   %eax
 a2a:	e8 f1 fe ff ff       	call   920 <free>
  return freep;
 a2f:	8b 15 a0 0e 00 00    	mov    0xea0,%edx
      if((p = morecore(nunits)) == 0)
 a35:	83 c4 10             	add    $0x10,%esp
 a38:	85 d2                	test   %edx,%edx
 a3a:	75 bc                	jne    9f8 <malloc+0x48>
        return 0;
  }
}
 a3c:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 a3f:	31 c0                	xor    %eax,%eax
}
 a41:	5b                   	pop    %ebx
 a42:	5e                   	pop    %esi
 a43:	5f                   	pop    %edi
 a44:	5d                   	pop    %ebp
 a45:	c3                   	ret    
    if(p->s.size >= nunits){
 a46:	89 d0                	mov    %edx,%eax
 a48:	89 fa                	mov    %edi,%edx
 a4a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 a50:	39 ce                	cmp    %ecx,%esi
 a52:	74 4c                	je     aa0 <malloc+0xf0>
        p->s.size -= nunits;
 a54:	29 f1                	sub    %esi,%ecx
 a56:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 a59:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 a5c:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 a5f:	89 15 a0 0e 00 00    	mov    %edx,0xea0
}
 a65:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 a68:	83 c0 08             	add    $0x8,%eax
}
 a6b:	5b                   	pop    %ebx
 a6c:	5e                   	pop    %esi
 a6d:	5f                   	pop    %edi
 a6e:	5d                   	pop    %ebp
 a6f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 a70:	c7 05 a0 0e 00 00 a4 	movl   $0xea4,0xea0
 a77:	0e 00 00 
    base.s.size = 0;
 a7a:	bf a4 0e 00 00       	mov    $0xea4,%edi
    base.s.ptr = freep = prevp = &base;
 a7f:	c7 05 a4 0e 00 00 a4 	movl   $0xea4,0xea4
 a86:	0e 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 a89:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 a8b:	c7 05 a8 0e 00 00 00 	movl   $0x0,0xea8
 a92:	00 00 00 
    if(p->s.size >= nunits){
 a95:	e9 42 ff ff ff       	jmp    9dc <malloc+0x2c>
 a9a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 aa0:	8b 08                	mov    (%eax),%ecx
 aa2:	89 0a                	mov    %ecx,(%edx)
 aa4:	eb b9                	jmp    a5f <malloc+0xaf>
