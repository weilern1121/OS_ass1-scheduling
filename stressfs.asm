
_stressfs:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
#include "fs.h"
#include "fcntl.h"

int
main(int argc, char *argv[])
{
   0:	55                   	push   %ebp
  int fd, i;
  char path[] = "stressfs0";
   1:	b8 73 74 72 65       	mov    $0x65727473,%eax
#include "fs.h"
#include "fcntl.h"

int
main(int argc, char *argv[])
{
   6:	89 e5                	mov    %esp,%ebp
   8:	57                   	push   %edi
   9:	56                   	push   %esi
   a:	53                   	push   %ebx
  char data[512];

  printf(1, "stressfs starting\n");
  memset(data, 'a', sizeof(data));

  for(i = 0; i < 4; i++)
   b:	31 db                	xor    %ebx,%ebx
#include "fs.h"
#include "fcntl.h"

int
main(int argc, char *argv[])
{
   d:	83 e4 f0             	and    $0xfffffff0,%esp
  10:	81 ec 30 02 00 00    	sub    $0x230,%esp
  int fd, i;
  char path[] = "stressfs0";
  16:	89 44 24 26          	mov    %eax,0x26(%esp)
  1a:	b8 73 73 66 73       	mov    $0x73667373,%eax
  1f:	89 44 24 2a          	mov    %eax,0x2a(%esp)
  char data[512];

  printf(1, "stressfs starting\n");
  23:	b8 60 08 00 00       	mov    $0x860,%eax
  28:	89 44 24 04          	mov    %eax,0x4(%esp)
  memset(data, 'a', sizeof(data));
  2c:	8d 74 24 30          	lea    0x30(%esp),%esi
{
  int fd, i;
  char path[] = "stressfs0";
  char data[512];

  printf(1, "stressfs starting\n");
  30:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)

int
main(int argc, char *argv[])
{
  int fd, i;
  char path[] = "stressfs0";
  37:	66 c7 44 24 2e 30 00 	movw   $0x30,0x2e(%esp)
  char data[512];

  printf(1, "stressfs starting\n");
  3e:	e8 bd 04 00 00       	call   500 <printf>
  memset(data, 'a', sizeof(data));
  43:	ba 00 02 00 00       	mov    $0x200,%edx
  48:	b9 61 00 00 00       	mov    $0x61,%ecx
  4d:	89 54 24 08          	mov    %edx,0x8(%esp)
  51:	89 4c 24 04          	mov    %ecx,0x4(%esp)
  55:	89 34 24             	mov    %esi,(%esp)
  58:	e8 83 01 00 00       	call   1e0 <memset>

  for(i = 0; i < 4; i++)
    if(fork() > 0)
  5d:	e8 1e 03 00 00       	call   380 <fork>
  62:	85 c0                	test   %eax,%eax
  64:	0f 8f de 00 00 00    	jg     148 <main+0x148>
  char data[512];

  printf(1, "stressfs starting\n");
  memset(data, 'a', sizeof(data));

  for(i = 0; i < 4; i++)
  6a:	43                   	inc    %ebx
  6b:	83 fb 04             	cmp    $0x4,%ebx
  6e:	66 90                	xchg   %ax,%ax
  70:	75 eb                	jne    5d <main+0x5d>
  72:	b0 04                	mov    $0x4,%al
  74:	88 44 24 1f          	mov    %al,0x1f(%esp)
    if(fork() > 0)
      break;

  printf(1, "write %d\n", i);
  78:	b8 73 08 00 00       	mov    $0x873,%eax
  7d:	89 5c 24 08          	mov    %ebx,0x8(%esp)

  path[8] += i;
  fd = open(path, O_CREATE | O_RDWR);
  81:	bb 14 00 00 00       	mov    $0x14,%ebx

  for(i = 0; i < 4; i++)
    if(fork() > 0)
      break;

  printf(1, "write %d\n", i);
  86:	89 44 24 04          	mov    %eax,0x4(%esp)
  8a:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  91:	e8 6a 04 00 00       	call   500 <printf>

  path[8] += i;
  96:	0f b6 44 24 1f       	movzbl 0x1f(%esp),%eax
  9b:	00 44 24 2e          	add    %al,0x2e(%esp)
  fd = open(path, O_CREATE | O_RDWR);
  9f:	b8 02 02 00 00       	mov    $0x202,%eax
  a4:	89 44 24 04          	mov    %eax,0x4(%esp)
  a8:	8d 44 24 26          	lea    0x26(%esp),%eax
  ac:	89 04 24             	mov    %eax,(%esp)
  af:	e8 14 03 00 00       	call   3c8 <open>
  b4:	89 c7                	mov    %eax,%edi
  b6:	8d 76 00             	lea    0x0(%esi),%esi
  b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  for(i = 0; i < 20; i++)
//    printf(fd, "%d\n", i);
    write(fd, data, sizeof(data));
  c0:	b8 00 02 00 00       	mov    $0x200,%eax
  c5:	89 44 24 08          	mov    %eax,0x8(%esp)
  c9:	89 74 24 04          	mov    %esi,0x4(%esp)
  cd:	89 3c 24             	mov    %edi,(%esp)
  d0:	e8 d3 02 00 00       	call   3a8 <write>

  printf(1, "write %d\n", i);

  path[8] += i;
  fd = open(path, O_CREATE | O_RDWR);
  for(i = 0; i < 20; i++)
  d5:	4b                   	dec    %ebx
  d6:	75 e8                	jne    c0 <main+0xc0>
//    printf(fd, "%d\n", i);
    write(fd, data, sizeof(data));
  close(fd);
  d8:	89 3c 24             	mov    %edi,(%esp)

  printf(1, "read\n");

  fd = open(path, O_RDONLY);
  db:	bb 14 00 00 00       	mov    $0x14,%ebx
  path[8] += i;
  fd = open(path, O_CREATE | O_RDWR);
  for(i = 0; i < 20; i++)
//    printf(fd, "%d\n", i);
    write(fd, data, sizeof(data));
  close(fd);
  e0:	e8 cb 02 00 00       	call   3b0 <close>

  printf(1, "read\n");
  e5:	ba 7d 08 00 00       	mov    $0x87d,%edx
  ea:	89 54 24 04          	mov    %edx,0x4(%esp)
  ee:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  f5:	e8 06 04 00 00       	call   500 <printf>

  fd = open(path, O_RDONLY);
  fa:	31 c9                	xor    %ecx,%ecx
  fc:	8d 44 24 26          	lea    0x26(%esp),%eax
 100:	89 4c 24 04          	mov    %ecx,0x4(%esp)
 104:	89 04 24             	mov    %eax,(%esp)
 107:	e8 bc 02 00 00       	call   3c8 <open>
 10c:	89 c7                	mov    %eax,%edi
 10e:	66 90                	xchg   %ax,%ax
  for (i = 0; i < 20; i++)
    read(fd, data, sizeof(data));
 110:	b8 00 02 00 00       	mov    $0x200,%eax
 115:	89 44 24 08          	mov    %eax,0x8(%esp)
 119:	89 74 24 04          	mov    %esi,0x4(%esp)
 11d:	89 3c 24             	mov    %edi,(%esp)
 120:	e8 7b 02 00 00       	call   3a0 <read>
  close(fd);

  printf(1, "read\n");

  fd = open(path, O_RDONLY);
  for (i = 0; i < 20; i++)
 125:	4b                   	dec    %ebx
 126:	75 e8                	jne    110 <main+0x110>
    read(fd, data, sizeof(data));
  close(fd);
 128:	89 3c 24             	mov    %edi,(%esp)
 12b:	e8 80 02 00 00       	call   3b0 <close>

  wait(0);
 130:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 137:	e8 54 02 00 00       	call   390 <wait>

  exit(0);
 13c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 143:	e8 40 02 00 00       	call   388 <exit>
 148:	88 d8                	mov    %bl,%al
 14a:	e9 25 ff ff ff       	jmp    74 <main+0x74>
 14f:	90                   	nop

00000150 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
 150:	55                   	push   %ebp
 151:	89 e5                	mov    %esp,%ebp
 153:	8b 45 08             	mov    0x8(%ebp),%eax
 156:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 159:	53                   	push   %ebx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 15a:	89 c2                	mov    %eax,%edx
 15c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 160:	41                   	inc    %ecx
 161:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
 165:	42                   	inc    %edx
 166:	84 db                	test   %bl,%bl
 168:	88 5a ff             	mov    %bl,-0x1(%edx)
 16b:	75 f3                	jne    160 <strcpy+0x10>
    ;
  return os;
}
 16d:	5b                   	pop    %ebx
 16e:	5d                   	pop    %ebp
 16f:	c3                   	ret    

00000170 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 170:	55                   	push   %ebp
 171:	89 e5                	mov    %esp,%ebp
 173:	8b 4d 08             	mov    0x8(%ebp),%ecx
 176:	56                   	push   %esi
 177:	53                   	push   %ebx
 178:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  while(*p && *p == *q)
 17b:	0f b6 01             	movzbl (%ecx),%eax
 17e:	0f b6 13             	movzbl (%ebx),%edx
 181:	84 c0                	test   %al,%al
 183:	75 1c                	jne    1a1 <strcmp+0x31>
 185:	eb 29                	jmp    1b0 <strcmp+0x40>
 187:	89 f6                	mov    %esi,%esi
 189:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
 190:	41                   	inc    %ecx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 191:	0f b6 01             	movzbl (%ecx),%eax
    p++, q++;
 194:	8d 73 01             	lea    0x1(%ebx),%esi
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 197:	0f b6 53 01          	movzbl 0x1(%ebx),%edx
 19b:	84 c0                	test   %al,%al
 19d:	74 11                	je     1b0 <strcmp+0x40>
 19f:	89 f3                	mov    %esi,%ebx
 1a1:	38 d0                	cmp    %dl,%al
 1a3:	74 eb                	je     190 <strcmp+0x20>
    p++, q++;
  return (uchar)*p - (uchar)*q;
}
 1a5:	5b                   	pop    %ebx
int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
    p++, q++;
  return (uchar)*p - (uchar)*q;
 1a6:	29 d0                	sub    %edx,%eax
}
 1a8:	5e                   	pop    %esi
 1a9:	5d                   	pop    %ebp
 1aa:	c3                   	ret    
 1ab:	90                   	nop
 1ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 1b0:	5b                   	pop    %ebx
}

int
strcmp(const char *p, const char *q)
{
  while(*p && *p == *q)
 1b1:	31 c0                	xor    %eax,%eax
    p++, q++;
  return (uchar)*p - (uchar)*q;
 1b3:	29 d0                	sub    %edx,%eax
}
 1b5:	5e                   	pop    %esi
 1b6:	5d                   	pop    %ebp
 1b7:	c3                   	ret    
 1b8:	90                   	nop
 1b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000001c0 <strlen>:

uint
strlen(const char *s)
{
 1c0:	55                   	push   %ebp
 1c1:	89 e5                	mov    %esp,%ebp
 1c3:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
 1c6:	80 39 00             	cmpb   $0x0,(%ecx)
 1c9:	74 10                	je     1db <strlen+0x1b>
 1cb:	31 d2                	xor    %edx,%edx
 1cd:	8d 76 00             	lea    0x0(%esi),%esi
 1d0:	42                   	inc    %edx
 1d1:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 1d5:	89 d0                	mov    %edx,%eax
 1d7:	75 f7                	jne    1d0 <strlen+0x10>
    ;
  return n;
}
 1d9:	5d                   	pop    %ebp
 1da:	c3                   	ret    
uint
strlen(const char *s)
{
  int n;

  for(n = 0; s[n]; n++)
 1db:	31 c0                	xor    %eax,%eax
    ;
  return n;
}
 1dd:	5d                   	pop    %ebp
 1de:	c3                   	ret    
 1df:	90                   	nop

000001e0 <memset>:

void*
memset(void *dst, int c, uint n)
{
 1e0:	55                   	push   %ebp
 1e1:	89 e5                	mov    %esp,%ebp
 1e3:	8b 55 08             	mov    0x8(%ebp),%edx
 1e6:	57                   	push   %edi
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 1e7:	8b 4d 10             	mov    0x10(%ebp),%ecx
 1ea:	8b 45 0c             	mov    0xc(%ebp),%eax
 1ed:	89 d7                	mov    %edx,%edi
 1ef:	fc                   	cld    
 1f0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 1f2:	5f                   	pop    %edi
 1f3:	89 d0                	mov    %edx,%eax
 1f5:	5d                   	pop    %ebp
 1f6:	c3                   	ret    
 1f7:	89 f6                	mov    %esi,%esi
 1f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000200 <strchr>:

char*
strchr(const char *s, char c)
{
 200:	55                   	push   %ebp
 201:	89 e5                	mov    %esp,%ebp
 203:	8b 45 08             	mov    0x8(%ebp),%eax
 206:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
 20a:	0f b6 10             	movzbl (%eax),%edx
 20d:	84 d2                	test   %dl,%dl
 20f:	74 1b                	je     22c <strchr+0x2c>
    if(*s == c)
 211:	38 d1                	cmp    %dl,%cl
 213:	75 0f                	jne    224 <strchr+0x24>
 215:	eb 17                	jmp    22e <strchr+0x2e>
 217:	89 f6                	mov    %esi,%esi
 219:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 220:	38 ca                	cmp    %cl,%dl
 222:	74 0a                	je     22e <strchr+0x2e>
}

char*
strchr(const char *s, char c)
{
  for(; *s; s++)
 224:	40                   	inc    %eax
 225:	0f b6 10             	movzbl (%eax),%edx
 228:	84 d2                	test   %dl,%dl
 22a:	75 f4                	jne    220 <strchr+0x20>
    if(*s == c)
      return (char*)s;
  return 0;
 22c:	31 c0                	xor    %eax,%eax
}
 22e:	5d                   	pop    %ebp
 22f:	c3                   	ret    

00000230 <gets>:

char*
gets(char *buf, int max)
{
 230:	55                   	push   %ebp
 231:	89 e5                	mov    %esp,%ebp
 233:	57                   	push   %edi
 234:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 235:	31 f6                	xor    %esi,%esi
  return 0;
}

char*
gets(char *buf, int max)
{
 237:	53                   	push   %ebx
 238:	83 ec 2c             	sub    $0x2c,%esp
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
 23b:	8d 7d e7             	lea    -0x19(%ebp),%edi
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 23e:	eb 32                	jmp    272 <gets+0x42>
    cc = read(0, &c, 1);
 240:	b8 01 00 00 00       	mov    $0x1,%eax
 245:	89 44 24 08          	mov    %eax,0x8(%esp)
 249:	89 7c 24 04          	mov    %edi,0x4(%esp)
 24d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 254:	e8 47 01 00 00       	call   3a0 <read>
    if(cc < 1)
 259:	85 c0                	test   %eax,%eax
 25b:	7e 1d                	jle    27a <gets+0x4a>
      break;
    buf[i++] = c;
 25d:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 261:	89 de                	mov    %ebx,%esi
 263:	8b 55 08             	mov    0x8(%ebp),%edx
    if(c == '\n' || c == '\r')
 266:	3c 0a                	cmp    $0xa,%al

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
    if(cc < 1)
      break;
    buf[i++] = c;
 268:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
 26c:	74 22                	je     290 <gets+0x60>
 26e:	3c 0d                	cmp    $0xd,%al
 270:	74 1e                	je     290 <gets+0x60>
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 272:	8d 5e 01             	lea    0x1(%esi),%ebx
 275:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 278:	7c c6                	jl     240 <gets+0x10>
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
 27a:	8b 45 08             	mov    0x8(%ebp),%eax
 27d:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 281:	83 c4 2c             	add    $0x2c,%esp
 284:	5b                   	pop    %ebx
 285:	5e                   	pop    %esi
 286:	5f                   	pop    %edi
 287:	5d                   	pop    %ebp
 288:	c3                   	ret    
 289:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
 290:	8b 45 08             	mov    0x8(%ebp),%eax
gets(char *buf, int max)
{
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 293:	89 de                	mov    %ebx,%esi
      break;
    buf[i++] = c;
    if(c == '\n' || c == '\r')
      break;
  }
  buf[i] = '\0';
 295:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
 299:	83 c4 2c             	add    $0x2c,%esp
 29c:	5b                   	pop    %ebx
 29d:	5e                   	pop    %esi
 29e:	5f                   	pop    %edi
 29f:	5d                   	pop    %ebp
 2a0:	c3                   	ret    
 2a1:	eb 0d                	jmp    2b0 <stat>
 2a3:	90                   	nop
 2a4:	90                   	nop
 2a5:	90                   	nop
 2a6:	90                   	nop
 2a7:	90                   	nop
 2a8:	90                   	nop
 2a9:	90                   	nop
 2aa:	90                   	nop
 2ab:	90                   	nop
 2ac:	90                   	nop
 2ad:	90                   	nop
 2ae:	90                   	nop
 2af:	90                   	nop

000002b0 <stat>:

int
stat(const char *n, struct stat *st)
{
 2b0:	55                   	push   %ebp
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 2b1:	31 c0                	xor    %eax,%eax
  return buf;
}

int
stat(const char *n, struct stat *st)
{
 2b3:	89 e5                	mov    %esp,%ebp
 2b5:	83 ec 18             	sub    $0x18,%esp
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 2b8:	89 44 24 04          	mov    %eax,0x4(%esp)
 2bc:	8b 45 08             	mov    0x8(%ebp),%eax
  return buf;
}

int
stat(const char *n, struct stat *st)
{
 2bf:	89 5d f8             	mov    %ebx,-0x8(%ebp)
 2c2:	89 75 fc             	mov    %esi,-0x4(%ebp)
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 2c5:	89 04 24             	mov    %eax,(%esp)
 2c8:	e8 fb 00 00 00       	call   3c8 <open>
  if(fd < 0)
 2cd:	85 c0                	test   %eax,%eax
 2cf:	78 2f                	js     300 <stat+0x50>
 2d1:	89 c3                	mov    %eax,%ebx
    return -1;
  r = fstat(fd, st);
 2d3:	8b 45 0c             	mov    0xc(%ebp),%eax
 2d6:	89 1c 24             	mov    %ebx,(%esp)
 2d9:	89 44 24 04          	mov    %eax,0x4(%esp)
 2dd:	e8 fe 00 00 00       	call   3e0 <fstat>
  close(fd);
 2e2:	89 1c 24             	mov    %ebx,(%esp)
  int r;

  fd = open(n, O_RDONLY);
  if(fd < 0)
    return -1;
  r = fstat(fd, st);
 2e5:	89 c6                	mov    %eax,%esi
  close(fd);
 2e7:	e8 c4 00 00 00       	call   3b0 <close>
  return r;
 2ec:	89 f0                	mov    %esi,%eax
}
 2ee:	8b 5d f8             	mov    -0x8(%ebp),%ebx
 2f1:	8b 75 fc             	mov    -0x4(%ebp),%esi
 2f4:	89 ec                	mov    %ebp,%esp
 2f6:	5d                   	pop    %ebp
 2f7:	c3                   	ret    
 2f8:	90                   	nop
 2f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  int fd;
  int r;

  fd = open(n, O_RDONLY);
  if(fd < 0)
    return -1;
 300:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 305:	eb e7                	jmp    2ee <stat+0x3e>
 307:	89 f6                	mov    %esi,%esi
 309:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000310 <atoi>:
  return r;
}

int
atoi(const char *s)
{
 310:	55                   	push   %ebp
 311:	89 e5                	mov    %esp,%ebp
 313:	8b 4d 08             	mov    0x8(%ebp),%ecx
 316:	53                   	push   %ebx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 317:	0f be 11             	movsbl (%ecx),%edx
 31a:	88 d0                	mov    %dl,%al
 31c:	2c 30                	sub    $0x30,%al
 31e:	3c 09                	cmp    $0x9,%al
 320:	b8 00 00 00 00       	mov    $0x0,%eax
 325:	77 1e                	ja     345 <atoi+0x35>
 327:	89 f6                	mov    %esi,%esi
 329:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
 330:	41                   	inc    %ecx
 331:	8d 04 80             	lea    (%eax,%eax,4),%eax
 334:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
atoi(const char *s)
{
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 338:	0f be 11             	movsbl (%ecx),%edx
 33b:	88 d3                	mov    %dl,%bl
 33d:	80 eb 30             	sub    $0x30,%bl
 340:	80 fb 09             	cmp    $0x9,%bl
 343:	76 eb                	jbe    330 <atoi+0x20>
    n = n*10 + *s++ - '0';
  return n;
}
 345:	5b                   	pop    %ebx
 346:	5d                   	pop    %ebp
 347:	c3                   	ret    
 348:	90                   	nop
 349:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000350 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 350:	55                   	push   %ebp
 351:	89 e5                	mov    %esp,%ebp
 353:	56                   	push   %esi
 354:	8b 45 08             	mov    0x8(%ebp),%eax
 357:	53                   	push   %ebx
 358:	8b 5d 10             	mov    0x10(%ebp),%ebx
 35b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 35e:	85 db                	test   %ebx,%ebx
 360:	7e 1a                	jle    37c <memmove+0x2c>
 362:	31 d2                	xor    %edx,%edx
 364:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 36a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi
    *dst++ = *src++;
 370:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 374:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 377:	42                   	inc    %edx
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 378:	39 da                	cmp    %ebx,%edx
 37a:	75 f4                	jne    370 <memmove+0x20>
    *dst++ = *src++;
  return vdst;
}
 37c:	5b                   	pop    %ebx
 37d:	5e                   	pop    %esi
 37e:	5d                   	pop    %ebp
 37f:	c3                   	ret    

00000380 <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 380:	b8 01 00 00 00       	mov    $0x1,%eax
 385:	cd 40                	int    $0x40
 387:	c3                   	ret    

00000388 <exit>:
SYSCALL(exit)
 388:	b8 02 00 00 00       	mov    $0x2,%eax
 38d:	cd 40                	int    $0x40
 38f:	c3                   	ret    

00000390 <wait>:
SYSCALL(wait)
 390:	b8 03 00 00 00       	mov    $0x3,%eax
 395:	cd 40                	int    $0x40
 397:	c3                   	ret    

00000398 <pipe>:
SYSCALL(pipe)
 398:	b8 04 00 00 00       	mov    $0x4,%eax
 39d:	cd 40                	int    $0x40
 39f:	c3                   	ret    

000003a0 <read>:
SYSCALL(read)
 3a0:	b8 05 00 00 00       	mov    $0x5,%eax
 3a5:	cd 40                	int    $0x40
 3a7:	c3                   	ret    

000003a8 <write>:
SYSCALL(write)
 3a8:	b8 10 00 00 00       	mov    $0x10,%eax
 3ad:	cd 40                	int    $0x40
 3af:	c3                   	ret    

000003b0 <close>:
SYSCALL(close)
 3b0:	b8 15 00 00 00       	mov    $0x15,%eax
 3b5:	cd 40                	int    $0x40
 3b7:	c3                   	ret    

000003b8 <kill>:
SYSCALL(kill)
 3b8:	b8 06 00 00 00       	mov    $0x6,%eax
 3bd:	cd 40                	int    $0x40
 3bf:	c3                   	ret    

000003c0 <exec>:
SYSCALL(exec)
 3c0:	b8 07 00 00 00       	mov    $0x7,%eax
 3c5:	cd 40                	int    $0x40
 3c7:	c3                   	ret    

000003c8 <open>:
SYSCALL(open)
 3c8:	b8 0f 00 00 00       	mov    $0xf,%eax
 3cd:	cd 40                	int    $0x40
 3cf:	c3                   	ret    

000003d0 <mknod>:
SYSCALL(mknod)
 3d0:	b8 11 00 00 00       	mov    $0x11,%eax
 3d5:	cd 40                	int    $0x40
 3d7:	c3                   	ret    

000003d8 <unlink>:
SYSCALL(unlink)
 3d8:	b8 12 00 00 00       	mov    $0x12,%eax
 3dd:	cd 40                	int    $0x40
 3df:	c3                   	ret    

000003e0 <fstat>:
SYSCALL(fstat)
 3e0:	b8 08 00 00 00       	mov    $0x8,%eax
 3e5:	cd 40                	int    $0x40
 3e7:	c3                   	ret    

000003e8 <link>:
SYSCALL(link)
 3e8:	b8 13 00 00 00       	mov    $0x13,%eax
 3ed:	cd 40                	int    $0x40
 3ef:	c3                   	ret    

000003f0 <mkdir>:
SYSCALL(mkdir)
 3f0:	b8 14 00 00 00       	mov    $0x14,%eax
 3f5:	cd 40                	int    $0x40
 3f7:	c3                   	ret    

000003f8 <chdir>:
SYSCALL(chdir)
 3f8:	b8 09 00 00 00       	mov    $0x9,%eax
 3fd:	cd 40                	int    $0x40
 3ff:	c3                   	ret    

00000400 <dup>:
SYSCALL(dup)
 400:	b8 0a 00 00 00       	mov    $0xa,%eax
 405:	cd 40                	int    $0x40
 407:	c3                   	ret    

00000408 <getpid>:
SYSCALL(getpid)
 408:	b8 0b 00 00 00       	mov    $0xb,%eax
 40d:	cd 40                	int    $0x40
 40f:	c3                   	ret    

00000410 <sbrk>:
SYSCALL(sbrk)
 410:	b8 0c 00 00 00       	mov    $0xc,%eax
 415:	cd 40                	int    $0x40
 417:	c3                   	ret    

00000418 <sleep>:
SYSCALL(sleep)
 418:	b8 0d 00 00 00       	mov    $0xd,%eax
 41d:	cd 40                	int    $0x40
 41f:	c3                   	ret    

00000420 <uptime>:
SYSCALL(uptime)
 420:	b8 0e 00 00 00       	mov    $0xe,%eax
 425:	cd 40                	int    $0x40
 427:	c3                   	ret    

00000428 <policy>:
SYSCALL(policy)
 428:	b8 17 00 00 00       	mov    $0x17,%eax
 42d:	cd 40                	int    $0x40
 42f:	c3                   	ret    

00000430 <detach>:
SYSCALL(detach)
 430:	b8 16 00 00 00       	mov    $0x16,%eax
 435:	cd 40                	int    $0x40
 437:	c3                   	ret    

00000438 <priority>:
SYSCALL(priority)
 438:	b8 18 00 00 00       	mov    $0x18,%eax
 43d:	cd 40                	int    $0x40
 43f:	c3                   	ret    

00000440 <wait_stat>:
SYSCALL(wait_stat)
 440:	b8 19 00 00 00       	mov    $0x19,%eax
 445:	cd 40                	int    $0x40
 447:	c3                   	ret    
 448:	66 90                	xchg   %ax,%ax
 44a:	66 90                	xchg   %ax,%ax
 44c:	66 90                	xchg   %ax,%ax
 44e:	66 90                	xchg   %ax,%ax

00000450 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 450:	55                   	push   %ebp
 451:	89 e5                	mov    %esp,%ebp
 453:	57                   	push   %edi
 454:	56                   	push   %esi
 455:	89 c6                	mov    %eax,%esi
 457:	53                   	push   %ebx
 458:	83 ec 4c             	sub    $0x4c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 45b:	8b 5d 08             	mov    0x8(%ebp),%ebx
 45e:	85 db                	test   %ebx,%ebx
 460:	0f 84 8a 00 00 00    	je     4f0 <printint+0xa0>
 466:	89 d0                	mov    %edx,%eax
 468:	c1 e8 1f             	shr    $0x1f,%eax
 46b:	84 c0                	test   %al,%al
 46d:	0f 84 7d 00 00 00    	je     4f0 <printint+0xa0>
    neg = 1;
    x = -xx;
 473:	89 d0                	mov    %edx,%eax
 475:	f7 d8                	neg    %eax
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
 477:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
 47e:	89 75 c0             	mov    %esi,-0x40(%ebp)
    x = -xx;
  } else {
    x = xx;
  }

  i = 0;
 481:	31 ff                	xor    %edi,%edi
 483:	89 ce                	mov    %ecx,%esi
 485:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 488:	eb 08                	jmp    492 <printint+0x42>
 48a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 490:	89 cf                	mov    %ecx,%edi
 492:	31 d2                	xor    %edx,%edx
 494:	f7 f6                	div    %esi
 496:	8d 4f 01             	lea    0x1(%edi),%ecx
 499:	0f b6 92 8c 08 00 00 	movzbl 0x88c(%edx),%edx
  }while((x /= base) != 0);
 4a0:	85 c0                	test   %eax,%eax
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
 4a2:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
  }while((x /= base) != 0);
 4a5:	75 e9                	jne    490 <printint+0x40>
  if(neg)
 4a7:	8b 55 c4             	mov    -0x3c(%ebp),%edx
 4aa:	8b 75 c0             	mov    -0x40(%ebp),%esi
 4ad:	85 d2                	test   %edx,%edx
 4af:	74 08                	je     4b9 <printint+0x69>
    buf[i++] = '-';
 4b1:	c6 44 0d d8 2d       	movb   $0x2d,-0x28(%ebp,%ecx,1)
 4b6:	8d 4f 02             	lea    0x2(%edi),%ecx
 4b9:	8d 7c 0d d7          	lea    -0x29(%ebp,%ecx,1),%edi
 4bd:	8d 76 00             	lea    0x0(%esi),%esi
 4c0:	0f b6 07             	movzbl (%edi),%eax
 4c3:	4f                   	dec    %edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 4c4:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 4c8:	89 34 24             	mov    %esi,(%esp)
 4cb:	88 45 d7             	mov    %al,-0x29(%ebp)
 4ce:	b8 01 00 00 00       	mov    $0x1,%eax
 4d3:	89 44 24 08          	mov    %eax,0x8(%esp)
 4d7:	e8 cc fe ff ff       	call   3a8 <write>
    buf[i++] = digits[x % base];
  }while((x /= base) != 0);
  if(neg)
    buf[i++] = '-';

  while(--i >= 0)
 4dc:	39 df                	cmp    %ebx,%edi
 4de:	75 e0                	jne    4c0 <printint+0x70>
    putc(fd, buf[i]);
}
 4e0:	83 c4 4c             	add    $0x4c,%esp
 4e3:	5b                   	pop    %ebx
 4e4:	5e                   	pop    %esi
 4e5:	5f                   	pop    %edi
 4e6:	5d                   	pop    %ebp
 4e7:	c3                   	ret    
 4e8:	90                   	nop
 4e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
  } else {
    x = xx;
 4f0:	89 d0                	mov    %edx,%eax
  static char digits[] = "0123456789ABCDEF";
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
 4f2:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 4f9:	eb 83                	jmp    47e <printint+0x2e>
 4fb:	90                   	nop
 4fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000500 <printf>:
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 500:	55                   	push   %ebp
 501:	89 e5                	mov    %esp,%ebp
 503:	57                   	push   %edi
 504:	56                   	push   %esi
 505:	53                   	push   %ebx
 506:	83 ec 3c             	sub    $0x3c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 509:	8b 75 0c             	mov    0xc(%ebp),%esi
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 50c:	8b 7d 08             	mov    0x8(%ebp),%edi
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 50f:	0f b6 1e             	movzbl (%esi),%ebx
 512:	84 db                	test   %bl,%bl
 514:	0f 84 c6 00 00 00    	je     5e0 <printf+0xe0>
 51a:	8d 45 10             	lea    0x10(%ebp),%eax
 51d:	46                   	inc    %esi
 51e:	89 45 d0             	mov    %eax,-0x30(%ebp)
 521:	31 d2                	xor    %edx,%edx
 523:	eb 3b                	jmp    560 <printf+0x60>
 525:	8d 76 00             	lea    0x0(%esi),%esi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 528:	83 f8 25             	cmp    $0x25,%eax
 52b:	89 55 d4             	mov    %edx,-0x2c(%ebp)
        state = '%';
 52e:	ba 25 00 00 00       	mov    $0x25,%edx
  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 533:	74 1e                	je     553 <printf+0x53>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 535:	b8 01 00 00 00       	mov    $0x1,%eax
 53a:	89 44 24 08          	mov    %eax,0x8(%esp)
 53e:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 541:	89 44 24 04          	mov    %eax,0x4(%esp)
 545:	89 3c 24             	mov    %edi,(%esp)
 548:	88 5d e2             	mov    %bl,-0x1e(%ebp)
 54b:	e8 58 fe ff ff       	call   3a8 <write>
 550:	8b 55 d4             	mov    -0x2c(%ebp),%edx
 553:	46                   	inc    %esi
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 554:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
 558:	84 db                	test   %bl,%bl
 55a:	0f 84 80 00 00 00    	je     5e0 <printf+0xe0>
    c = fmt[i] & 0xff;
    if(state == 0){
 560:	85 d2                	test   %edx,%edx
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
 562:	0f be cb             	movsbl %bl,%ecx
 565:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
 568:	74 be                	je     528 <printf+0x28>
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
 56a:	83 fa 25             	cmp    $0x25,%edx
 56d:	75 e4                	jne    553 <printf+0x53>
      if(c == 'd'){
 56f:	83 f8 64             	cmp    $0x64,%eax
 572:	0f 84 20 01 00 00    	je     698 <printf+0x198>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 578:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
 57e:	83 f9 70             	cmp    $0x70,%ecx
 581:	74 6d                	je     5f0 <printf+0xf0>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 583:	83 f8 73             	cmp    $0x73,%eax
 586:	0f 84 94 00 00 00    	je     620 <printf+0x120>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 58c:	83 f8 63             	cmp    $0x63,%eax
 58f:	0f 84 14 01 00 00    	je     6a9 <printf+0x1a9>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 595:	83 f8 25             	cmp    $0x25,%eax
 598:	0f 84 d2 00 00 00    	je     670 <printf+0x170>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 59e:	b8 01 00 00 00       	mov    $0x1,%eax
 5a3:	46                   	inc    %esi
 5a4:	89 44 24 08          	mov    %eax,0x8(%esp)
 5a8:	8d 45 e7             	lea    -0x19(%ebp),%eax
 5ab:	89 44 24 04          	mov    %eax,0x4(%esp)
 5af:	89 3c 24             	mov    %edi,(%esp)
 5b2:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 5b6:	e8 ed fd ff ff       	call   3a8 <write>
 5bb:	ba 01 00 00 00       	mov    $0x1,%edx
 5c0:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 5c3:	89 54 24 08          	mov    %edx,0x8(%esp)
 5c7:	89 44 24 04          	mov    %eax,0x4(%esp)
 5cb:	89 3c 24             	mov    %edi,(%esp)
 5ce:	88 5d e6             	mov    %bl,-0x1a(%ebp)
 5d1:	e8 d2 fd ff ff       	call   3a8 <write>
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 5d6:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 5da:	31 d2                	xor    %edx,%edx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 5dc:	84 db                	test   %bl,%bl
 5de:	75 80                	jne    560 <printf+0x60>
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 5e0:	83 c4 3c             	add    $0x3c,%esp
 5e3:	5b                   	pop    %ebx
 5e4:	5e                   	pop    %esi
 5e5:	5f                   	pop    %edi
 5e6:	5d                   	pop    %ebp
 5e7:	c3                   	ret    
 5e8:	90                   	nop
 5e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
 5f0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 5f7:	b9 10 00 00 00       	mov    $0x10,%ecx
 5fc:	8b 5d d0             	mov    -0x30(%ebp),%ebx
 5ff:	89 f8                	mov    %edi,%eax
 601:	8b 13                	mov    (%ebx),%edx
 603:	e8 48 fe ff ff       	call   450 <printint>
        ap++;
 608:	89 d8                	mov    %ebx,%eax
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 60a:	31 d2                	xor    %edx,%edx
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
        ap++;
 60c:	83 c0 04             	add    $0x4,%eax
 60f:	89 45 d0             	mov    %eax,-0x30(%ebp)
 612:	e9 3c ff ff ff       	jmp    553 <printf+0x53>
 617:	89 f6                	mov    %esi,%esi
 619:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
      } else if(c == 's'){
        s = (char*)*ap;
 620:	8b 45 d0             	mov    -0x30(%ebp),%eax
 623:	8b 18                	mov    (%eax),%ebx
        ap++;
 625:	83 c0 04             	add    $0x4,%eax
 628:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
          s = "(null)";
 62b:	b8 83 08 00 00       	mov    $0x883,%eax
 630:	85 db                	test   %ebx,%ebx
 632:	0f 44 d8             	cmove  %eax,%ebx
        while(*s != 0){
 635:	0f b6 03             	movzbl (%ebx),%eax
 638:	84 c0                	test   %al,%al
 63a:	74 27                	je     663 <printf+0x163>
 63c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 640:	88 45 e3             	mov    %al,-0x1d(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 643:	b8 01 00 00 00       	mov    $0x1,%eax
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
 648:	43                   	inc    %ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 649:	89 44 24 08          	mov    %eax,0x8(%esp)
 64d:	8d 45 e3             	lea    -0x1d(%ebp),%eax
 650:	89 44 24 04          	mov    %eax,0x4(%esp)
 654:	89 3c 24             	mov    %edi,(%esp)
 657:	e8 4c fd ff ff       	call   3a8 <write>
      } else if(c == 's'){
        s = (char*)*ap;
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
 65c:	0f b6 03             	movzbl (%ebx),%eax
 65f:	84 c0                	test   %al,%al
 661:	75 dd                	jne    640 <printf+0x140>
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 663:	31 d2                	xor    %edx,%edx
 665:	e9 e9 fe ff ff       	jmp    553 <printf+0x53>
 66a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 670:	b9 01 00 00 00       	mov    $0x1,%ecx
 675:	8d 45 e5             	lea    -0x1b(%ebp),%eax
 678:	89 4c 24 08          	mov    %ecx,0x8(%esp)
 67c:	89 44 24 04          	mov    %eax,0x4(%esp)
 680:	89 3c 24             	mov    %edi,(%esp)
 683:	88 5d e5             	mov    %bl,-0x1b(%ebp)
 686:	e8 1d fd ff ff       	call   3a8 <write>
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 68b:	31 d2                	xor    %edx,%edx
 68d:	e9 c1 fe ff ff       	jmp    553 <printf+0x53>
 692:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
 698:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 69f:	b9 0a 00 00 00       	mov    $0xa,%ecx
 6a4:	e9 53 ff ff ff       	jmp    5fc <printf+0xfc>
 6a9:	8b 5d d0             	mov    -0x30(%ebp),%ebx
 6ac:	8b 03                	mov    (%ebx),%eax
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 6ae:	89 3c 24             	mov    %edi,(%esp)
 6b1:	88 45 e4             	mov    %al,-0x1c(%ebp)
 6b4:	b8 01 00 00 00       	mov    $0x1,%eax
 6b9:	89 44 24 08          	mov    %eax,0x8(%esp)
 6bd:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 6c0:	89 44 24 04          	mov    %eax,0x4(%esp)
 6c4:	e8 df fc ff ff       	call   3a8 <write>
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
        ap++;
 6c9:	89 d8                	mov    %ebx,%eax
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 6cb:	31 d2                	xor    %edx,%edx
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
        putc(fd, *ap);
        ap++;
 6cd:	83 c0 04             	add    $0x4,%eax
 6d0:	89 45 d0             	mov    %eax,-0x30(%ebp)
 6d3:	e9 7b fe ff ff       	jmp    553 <printf+0x53>
 6d8:	66 90                	xchg   %ax,%ax
 6da:	66 90                	xchg   %ax,%ax
 6dc:	66 90                	xchg   %ax,%ax
 6de:	66 90                	xchg   %ax,%ax

000006e0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 6e0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 6e1:	a1 1c 0b 00 00       	mov    0xb1c,%eax
static Header base;
static Header *freep;

void
free(void *ap)
{
 6e6:	89 e5                	mov    %esp,%ebp
 6e8:	57                   	push   %edi
 6e9:	56                   	push   %esi
 6ea:	53                   	push   %ebx
 6eb:	8b 5d 08             	mov    0x8(%ebp),%ebx
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 6ee:	8b 10                	mov    (%eax),%edx
void
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
 6f0:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 6f3:	39 c8                	cmp    %ecx,%eax
 6f5:	73 19                	jae    710 <free+0x30>
 6f7:	89 f6                	mov    %esi,%esi
 6f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 700:	39 d1                	cmp    %edx,%ecx
 702:	72 1c                	jb     720 <free+0x40>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 704:	39 d0                	cmp    %edx,%eax
 706:	73 18                	jae    720 <free+0x40>
static Header base;
static Header *freep;

void
free(void *ap)
{
 708:	89 d0                	mov    %edx,%eax
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 70a:	39 c8                	cmp    %ecx,%eax
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 70c:	8b 10                	mov    (%eax),%edx
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 70e:	72 f0                	jb     700 <free+0x20>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 710:	39 d0                	cmp    %edx,%eax
 712:	72 f4                	jb     708 <free+0x28>
 714:	39 d1                	cmp    %edx,%ecx
 716:	73 f0                	jae    708 <free+0x28>
 718:	90                   	nop
 719:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      break;
  if(bp + bp->s.size == p->s.ptr){
 720:	8b 73 fc             	mov    -0x4(%ebx),%esi
 723:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 726:	39 d7                	cmp    %edx,%edi
 728:	74 19                	je     743 <free+0x63>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
 72a:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 72d:	8b 50 04             	mov    0x4(%eax),%edx
 730:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 733:	39 f1                	cmp    %esi,%ecx
 735:	74 25                	je     75c <free+0x7c>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
 737:	89 08                	mov    %ecx,(%eax)
  freep = p;
}
 739:	5b                   	pop    %ebx
  if(p + p->s.size == bp){
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
  freep = p;
 73a:	a3 1c 0b 00 00       	mov    %eax,0xb1c
}
 73f:	5e                   	pop    %esi
 740:	5f                   	pop    %edi
 741:	5d                   	pop    %ebp
 742:	c3                   	ret    
  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
      break;
  if(bp + bp->s.size == p->s.ptr){
    bp->s.size += p->s.ptr->s.size;
 743:	8b 7a 04             	mov    0x4(%edx),%edi
 746:	01 fe                	add    %edi,%esi
 748:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 74b:	8b 10                	mov    (%eax),%edx
 74d:	8b 12                	mov    (%edx),%edx
 74f:	89 53 f8             	mov    %edx,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 752:	8b 50 04             	mov    0x4(%eax),%edx
 755:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 758:	39 f1                	cmp    %esi,%ecx
 75a:	75 db                	jne    737 <free+0x57>
    p->s.size += bp->s.size;
 75c:	8b 4b fc             	mov    -0x4(%ebx),%ecx
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
  freep = p;
 75f:	a3 1c 0b 00 00       	mov    %eax,0xb1c
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    p->s.size += bp->s.size;
 764:	01 ca                	add    %ecx,%edx
 766:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 769:	8b 53 f8             	mov    -0x8(%ebx),%edx
 76c:	89 10                	mov    %edx,(%eax)
  } else
    p->s.ptr = bp;
  freep = p;
}
 76e:	5b                   	pop    %ebx
 76f:	5e                   	pop    %esi
 770:	5f                   	pop    %edi
 771:	5d                   	pop    %ebp
 772:	c3                   	ret    
 773:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 779:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000780 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 780:	55                   	push   %ebp
 781:	89 e5                	mov    %esp,%ebp
 783:	57                   	push   %edi
 784:	56                   	push   %esi
 785:	53                   	push   %ebx
 786:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 789:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 78c:	8b 15 1c 0b 00 00    	mov    0xb1c,%edx
malloc(uint nbytes)
{
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 792:	8d 78 07             	lea    0x7(%eax),%edi
 795:	c1 ef 03             	shr    $0x3,%edi
 798:	47                   	inc    %edi
  if((prevp = freep) == 0){
 799:	85 d2                	test   %edx,%edx
 79b:	0f 84 95 00 00 00    	je     836 <malloc+0xb6>
 7a1:	8b 02                	mov    (%edx),%eax
 7a3:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
 7a6:	39 cf                	cmp    %ecx,%edi
 7a8:	76 66                	jbe    810 <malloc+0x90>
 7aa:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
 7b0:	be 00 10 00 00       	mov    $0x1000,%esi
 7b5:	0f 43 f7             	cmovae %edi,%esi
 7b8:	ba 00 80 00 00       	mov    $0x8000,%edx
 7bd:	8d 1c fd 00 00 00 00 	lea    0x0(,%edi,8),%ebx
 7c4:	81 ff ff 0f 00 00    	cmp    $0xfff,%edi
 7ca:	0f 46 da             	cmovbe %edx,%ebx
 7cd:	eb 0a                	jmp    7d9 <malloc+0x59>
 7cf:	90                   	nop
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 7d0:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 7d2:	8b 48 04             	mov    0x4(%eax),%ecx
 7d5:	39 cf                	cmp    %ecx,%edi
 7d7:	76 37                	jbe    810 <malloc+0x90>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 7d9:	39 05 1c 0b 00 00    	cmp    %eax,0xb1c
 7df:	89 c2                	mov    %eax,%edx
 7e1:	75 ed                	jne    7d0 <malloc+0x50>
  char *p;
  Header *hp;

  if(nu < 4096)
    nu = 4096;
  p = sbrk(nu * sizeof(Header));
 7e3:	89 1c 24             	mov    %ebx,(%esp)
 7e6:	e8 25 fc ff ff       	call   410 <sbrk>
  if(p == (char*)-1)
 7eb:	83 f8 ff             	cmp    $0xffffffff,%eax
 7ee:	74 18                	je     808 <malloc+0x88>
    return 0;
  hp = (Header*)p;
  hp->s.size = nu;
 7f0:	89 70 04             	mov    %esi,0x4(%eax)
  free((void*)(hp + 1));
 7f3:	83 c0 08             	add    $0x8,%eax
 7f6:	89 04 24             	mov    %eax,(%esp)
 7f9:	e8 e2 fe ff ff       	call   6e0 <free>
  return freep;
 7fe:	8b 15 1c 0b 00 00    	mov    0xb1c,%edx
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
 804:	85 d2                	test   %edx,%edx
 806:	75 c8                	jne    7d0 <malloc+0x50>
        return 0;
 808:	31 c0                	xor    %eax,%eax
 80a:	eb 1c                	jmp    828 <malloc+0xa8>
 80c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
 810:	39 cf                	cmp    %ecx,%edi
 812:	74 1c                	je     830 <malloc+0xb0>
        prevp->s.ptr = p->s.ptr;
      else {
        p->s.size -= nunits;
 814:	29 f9                	sub    %edi,%ecx
 816:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 819:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 81c:	89 78 04             	mov    %edi,0x4(%eax)
      }
      freep = prevp;
 81f:	89 15 1c 0b 00 00    	mov    %edx,0xb1c
      return (void*)(p + 1);
 825:	83 c0 08             	add    $0x8,%eax
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
        return 0;
  }
}
 828:	83 c4 1c             	add    $0x1c,%esp
 82b:	5b                   	pop    %ebx
 82c:	5e                   	pop    %esi
 82d:	5f                   	pop    %edi
 82e:	5d                   	pop    %ebp
 82f:	c3                   	ret    
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
        prevp->s.ptr = p->s.ptr;
 830:	8b 08                	mov    (%eax),%ecx
 832:	89 0a                	mov    %ecx,(%edx)
 834:	eb e9                	jmp    81f <malloc+0x9f>
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
 836:	b8 20 0b 00 00       	mov    $0xb20,%eax
 83b:	ba 20 0b 00 00       	mov    $0xb20,%edx
    base.s.size = 0;
 840:	31 c9                	xor    %ecx,%ecx
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
 842:	a3 1c 0b 00 00       	mov    %eax,0xb1c
    base.s.size = 0;
 847:	b8 20 0b 00 00       	mov    $0xb20,%eax
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
 84c:	89 15 20 0b 00 00    	mov    %edx,0xb20
    base.s.size = 0;
 852:	89 0d 24 0b 00 00    	mov    %ecx,0xb24
 858:	e9 4d ff ff ff       	jmp    7aa <malloc+0x2a>
