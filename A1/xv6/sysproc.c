#include "types.h"
#include "x86.h"
#include "defs.h"
#include "date.h"
#include "param.h"
#include "memlayout.h"
#include "mmu.h"
#include "proc.h"

int
sys_fork(void)
{
  return fork();
}

int
sys_exit(void)
{
  exit();
  return 0;  // not reached
}

int
sys_wait(void)
{
  return wait();
}

int
sys_kill(void)
{
  int pid;

  if(argint(0, &pid) < 0)
    return -1;
  return kill(pid);
}

int
sys_getpid(void)
{
  return myproc()->pid;
}

int
sys_sbrk(void)
{
  int addr;
  int n;

  if(argint(0, &n) < 0)
    return -1;
  addr = myproc()->sz;
  if(growproc(n) < 0)
    return -1;
  return addr;
}

int
sys_sleep(void)
{
  int n;
  uint ticks0;

  if(argint(0, &n) < 0)
    return -1;
  acquire(&tickslock);
  ticks0 = ticks;
  while(ticks - ticks0 < n){
    if(myproc()->killed){
      release(&tickslock);
      return -1;
    }
    sleep(&ticks, &tickslock);
  }
  release(&tickslock);
  return 0;
}

// return how many clock tick interrupts have occurred
// since start.
int
sys_uptime(void)
{
  uint xticks;

  acquire(&tickslock);
  xticks = ticks;
  release(&tickslock);
  return xticks;
}

//add two numbers
int
sys_add(void)
{
  int a,b;
  //take two arguments from the user
  argint(0,&a);
  argint(1,&b);
  //return the sum
  return add(a,b);
}

//toggle the value of a global variable
int
sys_toggle(void)
{
  toggle();
  return 0;
}

// print all running processes
int
sys_ps(void)
{
  ps();
  return 0;
}

// print the number of times the system call print_count has been called
int 
sys_print_count(void)
{
  print_count();
  return 0;
}

//send
int
sys_send(void)
{
  int pid_sender;
  int pid_receiver;
  char *msg;
  
  argint(0,&pid_sender);
  argint(1,&pid_receiver);
  argstr(2,&msg);
  while(send(pid_sender,pid_receiver,(void*)msg)==-1);
  return 0;
}

//recv
int
sys_recv(void)
{
  char* msg;
  argstr(0,&msg);
  return recv((void*)msg);
}


//send_multi
int
sys_send_multi(void)
{
  int pid_sender;
  int *pid_receiver;
  char *msg;
  
  argint(0,&pid_sender);
  argint(1,(int*)&pid_receiver);
  argstr(2,&msg);
  return send_multi(pid_sender,pid_receiver,(void*)msg);

}