
_assig1_6:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
#include "stat.h"
#include "user.h"

int
main(void)
{
   0:	55                   	push   %ebp
   1:	89 e5                	mov    %esp,%ebp
   3:	83 e4 f0             	and    $0xfffffff0,%esp
	// toggle();	// toggle the system trace on or off
	int pid = fork();
   6:	e8 60 02 00 00       	call   26b <fork>
	if(pid==0){

	}
		// printf(1,"I am a child\n");
	ps();
   b:	e8 13 03 00 00       	call   323 <ps>
	wait();
  10:	e8 66 02 00 00       	call   27b <wait>
	exit();
  15:	e8 59 02 00 00       	call   273 <exit>
  1a:	66 90                	xchg   %ax,%ax
  1c:	66 90                	xchg   %ax,%ax
  1e:	66 90                	xchg   %ax,%ax

00000020 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
  20:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
  21:	31 c0                	xor    %eax,%eax
{
  23:	89 e5                	mov    %esp,%ebp
  25:	53                   	push   %ebx
  26:	8b 4d 08             	mov    0x8(%ebp),%ecx
  29:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  2c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
  30:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
  34:	88 14 01             	mov    %dl,(%ecx,%eax,1)
  37:	83 c0 01             	add    $0x1,%eax
  3a:	84 d2                	test   %dl,%dl
  3c:	75 f2                	jne    30 <strcpy+0x10>
    ;
  return os;
}
  3e:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  41:	89 c8                	mov    %ecx,%eax
  43:	c9                   	leave  
  44:	c3                   	ret    
  45:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000050 <strcmp>:

int
strcmp(const char *p, const char *q)
{
  50:	55                   	push   %ebp
  51:	89 e5                	mov    %esp,%ebp
  53:	53                   	push   %ebx
  54:	8b 55 08             	mov    0x8(%ebp),%edx
  57:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
  5a:	0f b6 02             	movzbl (%edx),%eax
  5d:	84 c0                	test   %al,%al
  5f:	75 17                	jne    78 <strcmp+0x28>
  61:	eb 3a                	jmp    9d <strcmp+0x4d>
  63:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  67:	90                   	nop
  68:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
  6c:	83 c2 01             	add    $0x1,%edx
  6f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
  72:	84 c0                	test   %al,%al
  74:	74 1a                	je     90 <strcmp+0x40>
    p++, q++;
  76:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
  78:	0f b6 19             	movzbl (%ecx),%ebx
  7b:	38 c3                	cmp    %al,%bl
  7d:	74 e9                	je     68 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
  7f:	29 d8                	sub    %ebx,%eax
}
  81:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  84:	c9                   	leave  
  85:	c3                   	ret    
  86:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  8d:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
  90:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
  94:	31 c0                	xor    %eax,%eax
  96:	29 d8                	sub    %ebx,%eax
}
  98:	8b 5d fc             	mov    -0x4(%ebp),%ebx
  9b:	c9                   	leave  
  9c:	c3                   	ret    
  return (uchar)*p - (uchar)*q;
  9d:	0f b6 19             	movzbl (%ecx),%ebx
  a0:	31 c0                	xor    %eax,%eax
  a2:	eb db                	jmp    7f <strcmp+0x2f>
  a4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  ab:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  af:	90                   	nop

000000b0 <strlen>:

uint
strlen(const char *s)
{
  b0:	55                   	push   %ebp
  b1:	89 e5                	mov    %esp,%ebp
  b3:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
  b6:	80 3a 00             	cmpb   $0x0,(%edx)
  b9:	74 15                	je     d0 <strlen+0x20>
  bb:	31 c0                	xor    %eax,%eax
  bd:	8d 76 00             	lea    0x0(%esi),%esi
  c0:	83 c0 01             	add    $0x1,%eax
  c3:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
  c7:	89 c1                	mov    %eax,%ecx
  c9:	75 f5                	jne    c0 <strlen+0x10>
    ;
  return n;
}
  cb:	89 c8                	mov    %ecx,%eax
  cd:	5d                   	pop    %ebp
  ce:	c3                   	ret    
  cf:	90                   	nop
  for(n = 0; s[n]; n++)
  d0:	31 c9                	xor    %ecx,%ecx
}
  d2:	5d                   	pop    %ebp
  d3:	89 c8                	mov    %ecx,%eax
  d5:	c3                   	ret    
  d6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  dd:	8d 76 00             	lea    0x0(%esi),%esi

000000e0 <memset>:

void*
memset(void *dst, int c, uint n)
{
  e0:	55                   	push   %ebp
  e1:	89 e5                	mov    %esp,%ebp
  e3:	57                   	push   %edi
  e4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
  e7:	8b 4d 10             	mov    0x10(%ebp),%ecx
  ea:	8b 45 0c             	mov    0xc(%ebp),%eax
  ed:	89 d7                	mov    %edx,%edi
  ef:	fc                   	cld    
  f0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
  f2:	8b 7d fc             	mov    -0x4(%ebp),%edi
  f5:	89 d0                	mov    %edx,%eax
  f7:	c9                   	leave  
  f8:	c3                   	ret    
  f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000100 <strchr>:

char*
strchr(const char *s, char c)
{
 100:	55                   	push   %ebp
 101:	89 e5                	mov    %esp,%ebp
 103:	8b 45 08             	mov    0x8(%ebp),%eax
 106:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 10a:	0f b6 10             	movzbl (%eax),%edx
 10d:	84 d2                	test   %dl,%dl
 10f:	75 12                	jne    123 <strchr+0x23>
 111:	eb 1d                	jmp    130 <strchr+0x30>
 113:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 117:	90                   	nop
 118:	0f b6 50 01          	movzbl 0x1(%eax),%edx
 11c:	83 c0 01             	add    $0x1,%eax
 11f:	84 d2                	test   %dl,%dl
 121:	74 0d                	je     130 <strchr+0x30>
    if(*s == c)
 123:	38 d1                	cmp    %dl,%cl
 125:	75 f1                	jne    118 <strchr+0x18>
      return (char*)s;
  return 0;
}
 127:	5d                   	pop    %ebp
 128:	c3                   	ret    
 129:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
 130:	31 c0                	xor    %eax,%eax
}
 132:	5d                   	pop    %ebp
 133:	c3                   	ret    
 134:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 13b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 13f:	90                   	nop

00000140 <gets>:

char*
gets(char *buf, int max)
{
 140:	55                   	push   %ebp
 141:	89 e5                	mov    %esp,%ebp
 143:	57                   	push   %edi
 144:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 145:	8d 7d e7             	lea    -0x19(%ebp),%edi
{
 148:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
 149:	31 db                	xor    %ebx,%ebx
{
 14b:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
 14e:	eb 27                	jmp    177 <gets+0x37>
    cc = read(0, &c, 1);
 150:	83 ec 04             	sub    $0x4,%esp
 153:	6a 01                	push   $0x1
 155:	57                   	push   %edi
 156:	6a 00                	push   $0x0
 158:	e8 2e 01 00 00       	call   28b <read>
    if(cc < 1)
 15d:	83 c4 10             	add    $0x10,%esp
 160:	85 c0                	test   %eax,%eax
 162:	7e 1d                	jle    181 <gets+0x41>
      break;
    buf[i++] = c;
 164:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 168:	8b 55 08             	mov    0x8(%ebp),%edx
 16b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 16f:	3c 0a                	cmp    $0xa,%al
 171:	74 1d                	je     190 <gets+0x50>
 173:	3c 0d                	cmp    $0xd,%al
 175:	74 19                	je     190 <gets+0x50>
  for(i=0; i+1 < max; ){
 177:	89 de                	mov    %ebx,%esi
 179:	83 c3 01             	add    $0x1,%ebx
 17c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 17f:	7c cf                	jl     150 <gets+0x10>
      break;
  }
  buf[i] = '\0';
 181:	8b 45 08             	mov    0x8(%ebp),%eax
 184:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 188:	8d 65 f4             	lea    -0xc(%ebp),%esp
 18b:	5b                   	pop    %ebx
 18c:	5e                   	pop    %esi
 18d:	5f                   	pop    %edi
 18e:	5d                   	pop    %ebp
 18f:	c3                   	ret    
  buf[i] = '\0';
 190:	8b 45 08             	mov    0x8(%ebp),%eax
 193:	89 de                	mov    %ebx,%esi
 195:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
}
 199:	8d 65 f4             	lea    -0xc(%ebp),%esp
 19c:	5b                   	pop    %ebx
 19d:	5e                   	pop    %esi
 19e:	5f                   	pop    %edi
 19f:	5d                   	pop    %ebp
 1a0:	c3                   	ret    
 1a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1a8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1af:	90                   	nop

000001b0 <stat>:

int
stat(const char *n, struct stat *st)
{
 1b0:	55                   	push   %ebp
 1b1:	89 e5                	mov    %esp,%ebp
 1b3:	56                   	push   %esi
 1b4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 1b5:	83 ec 08             	sub    $0x8,%esp
 1b8:	6a 00                	push   $0x0
 1ba:	ff 75 08             	push   0x8(%ebp)
 1bd:	e8 f1 00 00 00       	call   2b3 <open>
  if(fd < 0)
 1c2:	83 c4 10             	add    $0x10,%esp
 1c5:	85 c0                	test   %eax,%eax
 1c7:	78 27                	js     1f0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 1c9:	83 ec 08             	sub    $0x8,%esp
 1cc:	ff 75 0c             	push   0xc(%ebp)
 1cf:	89 c3                	mov    %eax,%ebx
 1d1:	50                   	push   %eax
 1d2:	e8 f4 00 00 00       	call   2cb <fstat>
  close(fd);
 1d7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 1da:	89 c6                	mov    %eax,%esi
  close(fd);
 1dc:	e8 ba 00 00 00       	call   29b <close>
  return r;
 1e1:	83 c4 10             	add    $0x10,%esp
}
 1e4:	8d 65 f8             	lea    -0x8(%ebp),%esp
 1e7:	89 f0                	mov    %esi,%eax
 1e9:	5b                   	pop    %ebx
 1ea:	5e                   	pop    %esi
 1eb:	5d                   	pop    %ebp
 1ec:	c3                   	ret    
 1ed:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 1f0:	be ff ff ff ff       	mov    $0xffffffff,%esi
 1f5:	eb ed                	jmp    1e4 <stat+0x34>
 1f7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 1fe:	66 90                	xchg   %ax,%ax

00000200 <atoi>:

int
atoi(const char *s)
{
 200:	55                   	push   %ebp
 201:	89 e5                	mov    %esp,%ebp
 203:	53                   	push   %ebx
 204:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 207:	0f be 02             	movsbl (%edx),%eax
 20a:	8d 48 d0             	lea    -0x30(%eax),%ecx
 20d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
 210:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
 215:	77 1e                	ja     235 <atoi+0x35>
 217:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 21e:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
 220:	83 c2 01             	add    $0x1,%edx
 223:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
 226:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
 22a:	0f be 02             	movsbl (%edx),%eax
 22d:	8d 58 d0             	lea    -0x30(%eax),%ebx
 230:	80 fb 09             	cmp    $0x9,%bl
 233:	76 eb                	jbe    220 <atoi+0x20>
  return n;
}
 235:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 238:	89 c8                	mov    %ecx,%eax
 23a:	c9                   	leave  
 23b:	c3                   	ret    
 23c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000240 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 240:	55                   	push   %ebp
 241:	89 e5                	mov    %esp,%ebp
 243:	57                   	push   %edi
 244:	8b 45 10             	mov    0x10(%ebp),%eax
 247:	8b 55 08             	mov    0x8(%ebp),%edx
 24a:	56                   	push   %esi
 24b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 24e:	85 c0                	test   %eax,%eax
 250:	7e 13                	jle    265 <memmove+0x25>
 252:	01 d0                	add    %edx,%eax
  dst = vdst;
 254:	89 d7                	mov    %edx,%edi
 256:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 25d:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
 260:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
 261:	39 f8                	cmp    %edi,%eax
 263:	75 fb                	jne    260 <memmove+0x20>
  return vdst;
}
 265:	5e                   	pop    %esi
 266:	89 d0                	mov    %edx,%eax
 268:	5f                   	pop    %edi
 269:	5d                   	pop    %ebp
 26a:	c3                   	ret    

0000026b <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 26b:	b8 01 00 00 00       	mov    $0x1,%eax
 270:	cd 40                	int    $0x40
 272:	c3                   	ret    

00000273 <exit>:
SYSCALL(exit)
 273:	b8 02 00 00 00       	mov    $0x2,%eax
 278:	cd 40                	int    $0x40
 27a:	c3                   	ret    

0000027b <wait>:
SYSCALL(wait)
 27b:	b8 03 00 00 00       	mov    $0x3,%eax
 280:	cd 40                	int    $0x40
 282:	c3                   	ret    

00000283 <pipe>:
SYSCALL(pipe)
 283:	b8 04 00 00 00       	mov    $0x4,%eax
 288:	cd 40                	int    $0x40
 28a:	c3                   	ret    

0000028b <read>:
SYSCALL(read)
 28b:	b8 05 00 00 00       	mov    $0x5,%eax
 290:	cd 40                	int    $0x40
 292:	c3                   	ret    

00000293 <write>:
SYSCALL(write)
 293:	b8 10 00 00 00       	mov    $0x10,%eax
 298:	cd 40                	int    $0x40
 29a:	c3                   	ret    

0000029b <close>:
SYSCALL(close)
 29b:	b8 15 00 00 00       	mov    $0x15,%eax
 2a0:	cd 40                	int    $0x40
 2a2:	c3                   	ret    

000002a3 <kill>:
SYSCALL(kill)
 2a3:	b8 06 00 00 00       	mov    $0x6,%eax
 2a8:	cd 40                	int    $0x40
 2aa:	c3                   	ret    

000002ab <exec>:
SYSCALL(exec)
 2ab:	b8 07 00 00 00       	mov    $0x7,%eax
 2b0:	cd 40                	int    $0x40
 2b2:	c3                   	ret    

000002b3 <open>:
SYSCALL(open)
 2b3:	b8 0f 00 00 00       	mov    $0xf,%eax
 2b8:	cd 40                	int    $0x40
 2ba:	c3                   	ret    

000002bb <mknod>:
SYSCALL(mknod)
 2bb:	b8 11 00 00 00       	mov    $0x11,%eax
 2c0:	cd 40                	int    $0x40
 2c2:	c3                   	ret    

000002c3 <unlink>:
SYSCALL(unlink)
 2c3:	b8 12 00 00 00       	mov    $0x12,%eax
 2c8:	cd 40                	int    $0x40
 2ca:	c3                   	ret    

000002cb <fstat>:
SYSCALL(fstat)
 2cb:	b8 08 00 00 00       	mov    $0x8,%eax
 2d0:	cd 40                	int    $0x40
 2d2:	c3                   	ret    

000002d3 <link>:
SYSCALL(link)
 2d3:	b8 13 00 00 00       	mov    $0x13,%eax
 2d8:	cd 40                	int    $0x40
 2da:	c3                   	ret    

000002db <mkdir>:
SYSCALL(mkdir)
 2db:	b8 14 00 00 00       	mov    $0x14,%eax
 2e0:	cd 40                	int    $0x40
 2e2:	c3                   	ret    

000002e3 <chdir>:
SYSCALL(chdir)
 2e3:	b8 09 00 00 00       	mov    $0x9,%eax
 2e8:	cd 40                	int    $0x40
 2ea:	c3                   	ret    

000002eb <dup>:
SYSCALL(dup)
 2eb:	b8 0a 00 00 00       	mov    $0xa,%eax
 2f0:	cd 40                	int    $0x40
 2f2:	c3                   	ret    

000002f3 <getpid>:
SYSCALL(getpid)
 2f3:	b8 0b 00 00 00       	mov    $0xb,%eax
 2f8:	cd 40                	int    $0x40
 2fa:	c3                   	ret    

000002fb <sbrk>:
SYSCALL(sbrk)
 2fb:	b8 0c 00 00 00       	mov    $0xc,%eax
 300:	cd 40                	int    $0x40
 302:	c3                   	ret    

00000303 <sleep>:
SYSCALL(sleep)
 303:	b8 0d 00 00 00       	mov    $0xd,%eax
 308:	cd 40                	int    $0x40
 30a:	c3                   	ret    

0000030b <uptime>:
SYSCALL(uptime)
 30b:	b8 0e 00 00 00       	mov    $0xe,%eax
 310:	cd 40                	int    $0x40
 312:	c3                   	ret    

00000313 <add>:
SYSCALL(add)
 313:	b8 16 00 00 00       	mov    $0x16,%eax
 318:	cd 40                	int    $0x40
 31a:	c3                   	ret    

0000031b <toggle>:
SYSCALL(toggle)
 31b:	b8 17 00 00 00       	mov    $0x17,%eax
 320:	cd 40                	int    $0x40
 322:	c3                   	ret    

00000323 <ps>:
SYSCALL(ps)
 323:	b8 18 00 00 00       	mov    $0x18,%eax
 328:	cd 40                	int    $0x40
 32a:	c3                   	ret    

0000032b <print_count>:
SYSCALL(print_count)
 32b:	b8 19 00 00 00       	mov    $0x19,%eax
 330:	cd 40                	int    $0x40
 332:	c3                   	ret    

00000333 <send>:
SYSCALL(send)
 333:	b8 1a 00 00 00       	mov    $0x1a,%eax
 338:	cd 40                	int    $0x40
 33a:	c3                   	ret    

0000033b <recv>:
SYSCALL(recv)
 33b:	b8 1b 00 00 00       	mov    $0x1b,%eax
 340:	cd 40                	int    $0x40
 342:	c3                   	ret    

00000343 <send_multi>:
 343:	b8 1c 00 00 00       	mov    $0x1c,%eax
 348:	cd 40                	int    $0x40
 34a:	c3                   	ret    
 34b:	66 90                	xchg   %ax,%ax
 34d:	66 90                	xchg   %ax,%ax
 34f:	90                   	nop

00000350 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 350:	55                   	push   %ebp
 351:	89 e5                	mov    %esp,%ebp
 353:	57                   	push   %edi
 354:	56                   	push   %esi
 355:	53                   	push   %ebx
 356:	83 ec 3c             	sub    $0x3c,%esp
 359:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
 35c:	89 d1                	mov    %edx,%ecx
{
 35e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
 361:	85 d2                	test   %edx,%edx
 363:	0f 89 7f 00 00 00    	jns    3e8 <printint+0x98>
 369:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 36d:	74 79                	je     3e8 <printint+0x98>
    neg = 1;
 36f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
 376:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
 378:	31 db                	xor    %ebx,%ebx
 37a:	8d 75 d7             	lea    -0x29(%ebp),%esi
 37d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 380:	89 c8                	mov    %ecx,%eax
 382:	31 d2                	xor    %edx,%edx
 384:	89 cf                	mov    %ecx,%edi
 386:	f7 75 c4             	divl   -0x3c(%ebp)
 389:	0f b6 92 88 07 00 00 	movzbl 0x788(%edx),%edx
 390:	89 45 c0             	mov    %eax,-0x40(%ebp)
 393:	89 d8                	mov    %ebx,%eax
 395:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
 398:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
 39b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
 39e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
 3a1:	76 dd                	jbe    380 <printint+0x30>
  if(neg)
 3a3:	8b 4d bc             	mov    -0x44(%ebp),%ecx
 3a6:	85 c9                	test   %ecx,%ecx
 3a8:	74 0c                	je     3b6 <printint+0x66>
    buf[i++] = '-';
 3aa:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
 3af:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
 3b1:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
 3b6:	8b 7d b8             	mov    -0x48(%ebp),%edi
 3b9:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
 3bd:	eb 07                	jmp    3c6 <printint+0x76>
 3bf:	90                   	nop
    putc(fd, buf[i]);
 3c0:	0f b6 13             	movzbl (%ebx),%edx
 3c3:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
 3c6:	83 ec 04             	sub    $0x4,%esp
 3c9:	88 55 d7             	mov    %dl,-0x29(%ebp)
 3cc:	6a 01                	push   $0x1
 3ce:	56                   	push   %esi
 3cf:	57                   	push   %edi
 3d0:	e8 be fe ff ff       	call   293 <write>
  while(--i >= 0)
 3d5:	83 c4 10             	add    $0x10,%esp
 3d8:	39 de                	cmp    %ebx,%esi
 3da:	75 e4                	jne    3c0 <printint+0x70>
}
 3dc:	8d 65 f4             	lea    -0xc(%ebp),%esp
 3df:	5b                   	pop    %ebx
 3e0:	5e                   	pop    %esi
 3e1:	5f                   	pop    %edi
 3e2:	5d                   	pop    %ebp
 3e3:	c3                   	ret    
 3e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 3e8:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
 3ef:	eb 87                	jmp    378 <printint+0x28>
 3f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3f8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 3ff:	90                   	nop

00000400 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 400:	55                   	push   %ebp
 401:	89 e5                	mov    %esp,%ebp
 403:	57                   	push   %edi
 404:	56                   	push   %esi
 405:	53                   	push   %ebx
 406:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 409:	8b 5d 0c             	mov    0xc(%ebp),%ebx
{
 40c:	8b 75 08             	mov    0x8(%ebp),%esi
  for(i = 0; fmt[i]; i++){
 40f:	0f b6 13             	movzbl (%ebx),%edx
 412:	84 d2                	test   %dl,%dl
 414:	74 6a                	je     480 <printf+0x80>
  ap = (uint*)(void*)&fmt + 1;
 416:	8d 45 10             	lea    0x10(%ebp),%eax
 419:	83 c3 01             	add    $0x1,%ebx
  write(fd, &c, 1);
 41c:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
 41f:	31 c9                	xor    %ecx,%ecx
  ap = (uint*)(void*)&fmt + 1;
 421:	89 45 d0             	mov    %eax,-0x30(%ebp)
 424:	eb 36                	jmp    45c <printf+0x5c>
 426:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 42d:	8d 76 00             	lea    0x0(%esi),%esi
 430:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
 433:	b9 25 00 00 00       	mov    $0x25,%ecx
      if(c == '%'){
 438:	83 f8 25             	cmp    $0x25,%eax
 43b:	74 15                	je     452 <printf+0x52>
  write(fd, &c, 1);
 43d:	83 ec 04             	sub    $0x4,%esp
 440:	88 55 e7             	mov    %dl,-0x19(%ebp)
 443:	6a 01                	push   $0x1
 445:	57                   	push   %edi
 446:	56                   	push   %esi
 447:	e8 47 fe ff ff       	call   293 <write>
 44c:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      } else {
        putc(fd, c);
 44f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 452:	0f b6 13             	movzbl (%ebx),%edx
 455:	83 c3 01             	add    $0x1,%ebx
 458:	84 d2                	test   %dl,%dl
 45a:	74 24                	je     480 <printf+0x80>
    c = fmt[i] & 0xff;
 45c:	0f b6 c2             	movzbl %dl,%eax
    if(state == 0){
 45f:	85 c9                	test   %ecx,%ecx
 461:	74 cd                	je     430 <printf+0x30>
      }
    } else if(state == '%'){
 463:	83 f9 25             	cmp    $0x25,%ecx
 466:	75 ea                	jne    452 <printf+0x52>
      if(c == 'd'){
 468:	83 f8 25             	cmp    $0x25,%eax
 46b:	0f 84 07 01 00 00    	je     578 <printf+0x178>
 471:	83 e8 63             	sub    $0x63,%eax
 474:	83 f8 15             	cmp    $0x15,%eax
 477:	77 17                	ja     490 <printf+0x90>
 479:	ff 24 85 30 07 00 00 	jmp    *0x730(,%eax,4)
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 480:	8d 65 f4             	lea    -0xc(%ebp),%esp
 483:	5b                   	pop    %ebx
 484:	5e                   	pop    %esi
 485:	5f                   	pop    %edi
 486:	5d                   	pop    %ebp
 487:	c3                   	ret    
 488:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 48f:	90                   	nop
  write(fd, &c, 1);
 490:	83 ec 04             	sub    $0x4,%esp
 493:	88 55 d4             	mov    %dl,-0x2c(%ebp)
 496:	6a 01                	push   $0x1
 498:	57                   	push   %edi
 499:	56                   	push   %esi
 49a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 49e:	e8 f0 fd ff ff       	call   293 <write>
        putc(fd, c);
 4a3:	0f b6 55 d4          	movzbl -0x2c(%ebp),%edx
  write(fd, &c, 1);
 4a7:	83 c4 0c             	add    $0xc,%esp
 4aa:	88 55 e7             	mov    %dl,-0x19(%ebp)
 4ad:	6a 01                	push   $0x1
 4af:	57                   	push   %edi
 4b0:	56                   	push   %esi
 4b1:	e8 dd fd ff ff       	call   293 <write>
        putc(fd, c);
 4b6:	83 c4 10             	add    $0x10,%esp
      state = 0;
 4b9:	31 c9                	xor    %ecx,%ecx
 4bb:	eb 95                	jmp    452 <printf+0x52>
 4bd:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 4c0:	83 ec 0c             	sub    $0xc,%esp
 4c3:	b9 10 00 00 00       	mov    $0x10,%ecx
 4c8:	6a 00                	push   $0x0
 4ca:	8b 45 d0             	mov    -0x30(%ebp),%eax
 4cd:	8b 10                	mov    (%eax),%edx
 4cf:	89 f0                	mov    %esi,%eax
 4d1:	e8 7a fe ff ff       	call   350 <printint>
        ap++;
 4d6:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 4da:	83 c4 10             	add    $0x10,%esp
      state = 0;
 4dd:	31 c9                	xor    %ecx,%ecx
 4df:	e9 6e ff ff ff       	jmp    452 <printf+0x52>
 4e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 4e8:	8b 45 d0             	mov    -0x30(%ebp),%eax
 4eb:	8b 10                	mov    (%eax),%edx
        ap++;
 4ed:	83 c0 04             	add    $0x4,%eax
 4f0:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 4f3:	85 d2                	test   %edx,%edx
 4f5:	0f 84 8d 00 00 00    	je     588 <printf+0x188>
        while(*s != 0){
 4fb:	0f b6 02             	movzbl (%edx),%eax
      state = 0;
 4fe:	31 c9                	xor    %ecx,%ecx
        while(*s != 0){
 500:	84 c0                	test   %al,%al
 502:	0f 84 4a ff ff ff    	je     452 <printf+0x52>
 508:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 50b:	89 d3                	mov    %edx,%ebx
 50d:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 510:	83 ec 04             	sub    $0x4,%esp
          s++;
 513:	83 c3 01             	add    $0x1,%ebx
 516:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 519:	6a 01                	push   $0x1
 51b:	57                   	push   %edi
 51c:	56                   	push   %esi
 51d:	e8 71 fd ff ff       	call   293 <write>
        while(*s != 0){
 522:	0f b6 03             	movzbl (%ebx),%eax
 525:	83 c4 10             	add    $0x10,%esp
 528:	84 c0                	test   %al,%al
 52a:	75 e4                	jne    510 <printf+0x110>
      state = 0;
 52c:	8b 5d d4             	mov    -0x2c(%ebp),%ebx
 52f:	31 c9                	xor    %ecx,%ecx
 531:	e9 1c ff ff ff       	jmp    452 <printf+0x52>
 536:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 53d:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 540:	83 ec 0c             	sub    $0xc,%esp
 543:	b9 0a 00 00 00       	mov    $0xa,%ecx
 548:	6a 01                	push   $0x1
 54a:	e9 7b ff ff ff       	jmp    4ca <printf+0xca>
 54f:	90                   	nop
        putc(fd, *ap);
 550:	8b 45 d0             	mov    -0x30(%ebp),%eax
  write(fd, &c, 1);
 553:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 556:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
 558:	6a 01                	push   $0x1
 55a:	57                   	push   %edi
 55b:	56                   	push   %esi
        putc(fd, *ap);
 55c:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
 55f:	e8 2f fd ff ff       	call   293 <write>
        ap++;
 564:	83 45 d0 04          	addl   $0x4,-0x30(%ebp)
 568:	83 c4 10             	add    $0x10,%esp
      state = 0;
 56b:	31 c9                	xor    %ecx,%ecx
 56d:	e9 e0 fe ff ff       	jmp    452 <printf+0x52>
 572:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, c);
 578:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
 57b:	83 ec 04             	sub    $0x4,%esp
 57e:	e9 2a ff ff ff       	jmp    4ad <printf+0xad>
 583:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 587:	90                   	nop
          s = "(null)";
 588:	ba 28 07 00 00       	mov    $0x728,%edx
        while(*s != 0){
 58d:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 590:	b8 28 00 00 00       	mov    $0x28,%eax
 595:	89 d3                	mov    %edx,%ebx
 597:	e9 74 ff ff ff       	jmp    510 <printf+0x110>
 59c:	66 90                	xchg   %ax,%ax
 59e:	66 90                	xchg   %ax,%ax

000005a0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 5a0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 5a1:	a1 28 0a 00 00       	mov    0xa28,%eax
{
 5a6:	89 e5                	mov    %esp,%ebp
 5a8:	57                   	push   %edi
 5a9:	56                   	push   %esi
 5aa:	53                   	push   %ebx
 5ab:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 5ae:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 5b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 5b8:	89 c2                	mov    %eax,%edx
 5ba:	8b 00                	mov    (%eax),%eax
 5bc:	39 ca                	cmp    %ecx,%edx
 5be:	73 30                	jae    5f0 <free+0x50>
 5c0:	39 c1                	cmp    %eax,%ecx
 5c2:	72 04                	jb     5c8 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 5c4:	39 c2                	cmp    %eax,%edx
 5c6:	72 f0                	jb     5b8 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
 5c8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 5cb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 5ce:	39 f8                	cmp    %edi,%eax
 5d0:	74 30                	je     602 <free+0x62>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
 5d2:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 5d5:	8b 42 04             	mov    0x4(%edx),%eax
 5d8:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 5db:	39 f1                	cmp    %esi,%ecx
 5dd:	74 3a                	je     619 <free+0x79>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
 5df:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
 5e1:	5b                   	pop    %ebx
  freep = p;
 5e2:	89 15 28 0a 00 00    	mov    %edx,0xa28
}
 5e8:	5e                   	pop    %esi
 5e9:	5f                   	pop    %edi
 5ea:	5d                   	pop    %ebp
 5eb:	c3                   	ret    
 5ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 5f0:	39 c2                	cmp    %eax,%edx
 5f2:	72 c4                	jb     5b8 <free+0x18>
 5f4:	39 c1                	cmp    %eax,%ecx
 5f6:	73 c0                	jae    5b8 <free+0x18>
  if(bp + bp->s.size == p->s.ptr){
 5f8:	8b 73 fc             	mov    -0x4(%ebx),%esi
 5fb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 5fe:	39 f8                	cmp    %edi,%eax
 600:	75 d0                	jne    5d2 <free+0x32>
    bp->s.size += p->s.ptr->s.size;
 602:	03 70 04             	add    0x4(%eax),%esi
 605:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 608:	8b 02                	mov    (%edx),%eax
 60a:	8b 00                	mov    (%eax),%eax
 60c:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
 60f:	8b 42 04             	mov    0x4(%edx),%eax
 612:	8d 34 c2             	lea    (%edx,%eax,8),%esi
 615:	39 f1                	cmp    %esi,%ecx
 617:	75 c6                	jne    5df <free+0x3f>
    p->s.size += bp->s.size;
 619:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
 61c:	89 15 28 0a 00 00    	mov    %edx,0xa28
    p->s.size += bp->s.size;
 622:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
 625:	8b 4b f8             	mov    -0x8(%ebx),%ecx
 628:	89 0a                	mov    %ecx,(%edx)
}
 62a:	5b                   	pop    %ebx
 62b:	5e                   	pop    %esi
 62c:	5f                   	pop    %edi
 62d:	5d                   	pop    %ebp
 62e:	c3                   	ret    
 62f:	90                   	nop

00000630 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 630:	55                   	push   %ebp
 631:	89 e5                	mov    %esp,%ebp
 633:	57                   	push   %edi
 634:	56                   	push   %esi
 635:	53                   	push   %ebx
 636:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 639:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 63c:	8b 3d 28 0a 00 00    	mov    0xa28,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 642:	8d 70 07             	lea    0x7(%eax),%esi
 645:	c1 ee 03             	shr    $0x3,%esi
 648:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
 64b:	85 ff                	test   %edi,%edi
 64d:	0f 84 9d 00 00 00    	je     6f0 <malloc+0xc0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 653:	8b 17                	mov    (%edi),%edx
    if(p->s.size >= nunits){
 655:	8b 4a 04             	mov    0x4(%edx),%ecx
 658:	39 f1                	cmp    %esi,%ecx
 65a:	73 6a                	jae    6c6 <malloc+0x96>
 65c:	bb 00 10 00 00       	mov    $0x1000,%ebx
 661:	39 de                	cmp    %ebx,%esi
 663:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
 666:	8d 04 dd 00 00 00 00 	lea    0x0(,%ebx,8),%eax
 66d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 670:	eb 17                	jmp    689 <malloc+0x59>
 672:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 678:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 67a:	8b 48 04             	mov    0x4(%eax),%ecx
 67d:	39 f1                	cmp    %esi,%ecx
 67f:	73 4f                	jae    6d0 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 681:	8b 3d 28 0a 00 00    	mov    0xa28,%edi
 687:	89 c2                	mov    %eax,%edx
 689:	39 d7                	cmp    %edx,%edi
 68b:	75 eb                	jne    678 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 68d:	83 ec 0c             	sub    $0xc,%esp
 690:	ff 75 e4             	push   -0x1c(%ebp)
 693:	e8 63 fc ff ff       	call   2fb <sbrk>
  if(p == (char*)-1)
 698:	83 c4 10             	add    $0x10,%esp
 69b:	83 f8 ff             	cmp    $0xffffffff,%eax
 69e:	74 1c                	je     6bc <malloc+0x8c>
  hp->s.size = nu;
 6a0:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 6a3:	83 ec 0c             	sub    $0xc,%esp
 6a6:	83 c0 08             	add    $0x8,%eax
 6a9:	50                   	push   %eax
 6aa:	e8 f1 fe ff ff       	call   5a0 <free>
  return freep;
 6af:	8b 15 28 0a 00 00    	mov    0xa28,%edx
      if((p = morecore(nunits)) == 0)
 6b5:	83 c4 10             	add    $0x10,%esp
 6b8:	85 d2                	test   %edx,%edx
 6ba:	75 bc                	jne    678 <malloc+0x48>
        return 0;
  }
}
 6bc:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 6bf:	31 c0                	xor    %eax,%eax
}
 6c1:	5b                   	pop    %ebx
 6c2:	5e                   	pop    %esi
 6c3:	5f                   	pop    %edi
 6c4:	5d                   	pop    %ebp
 6c5:	c3                   	ret    
    if(p->s.size >= nunits){
 6c6:	89 d0                	mov    %edx,%eax
 6c8:	89 fa                	mov    %edi,%edx
 6ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 6d0:	39 ce                	cmp    %ecx,%esi
 6d2:	74 4c                	je     720 <malloc+0xf0>
        p->s.size -= nunits;
 6d4:	29 f1                	sub    %esi,%ecx
 6d6:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 6d9:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 6dc:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
 6df:	89 15 28 0a 00 00    	mov    %edx,0xa28
}
 6e5:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 6e8:	83 c0 08             	add    $0x8,%eax
}
 6eb:	5b                   	pop    %ebx
 6ec:	5e                   	pop    %esi
 6ed:	5f                   	pop    %edi
 6ee:	5d                   	pop    %ebp
 6ef:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 6f0:	c7 05 28 0a 00 00 2c 	movl   $0xa2c,0xa28
 6f7:	0a 00 00 
    base.s.size = 0;
 6fa:	bf 2c 0a 00 00       	mov    $0xa2c,%edi
    base.s.ptr = freep = prevp = &base;
 6ff:	c7 05 2c 0a 00 00 2c 	movl   $0xa2c,0xa2c
 706:	0a 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 709:	89 fa                	mov    %edi,%edx
    base.s.size = 0;
 70b:	c7 05 30 0a 00 00 00 	movl   $0x0,0xa30
 712:	00 00 00 
    if(p->s.size >= nunits){
 715:	e9 42 ff ff ff       	jmp    65c <malloc+0x2c>
 71a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
 720:	8b 08                	mov    (%eax),%ecx
 722:	89 0a                	mov    %ecx,(%edx)
 724:	eb b9                	jmp    6df <malloc+0xaf>
