
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
{
   d:	83 e4 f0             	and    $0xfffffff0,%esp
  10:	81 ec 30 02 00 00    	sub    $0x230,%esp
  char path[] = "stressfs0";
  16:	89 44 24 26          	mov    %eax,0x26(%esp)
  1a:	b8 73 73 66 73       	mov    $0x73667373,%eax
  1f:	89 44 24 2a          	mov    %eax,0x2a(%esp)
  printf(1, "stressfs starting\n");
  23:	b8 58 08 00 00       	mov    $0x858,%eax
  28:	89 44 24 04          	mov    %eax,0x4(%esp)
  memset(data, 'a', sizeof(data));
  2c:	8d 74 24 30          	lea    0x30(%esp),%esi
  printf(1, "stressfs starting\n");
  30:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  char path[] = "stressfs0";
  37:	66 c7 44 24 2e 30 00 	movw   $0x30,0x2e(%esp)
  printf(1, "stressfs starting\n");
  3e:	e8 9d 04 00 00       	call   4e0 <printf>
  memset(data, 'a', sizeof(data));
  43:	ba 00 02 00 00       	mov    $0x200,%edx
  48:	b9 61 00 00 00       	mov    $0x61,%ecx
  4d:	89 54 24 08          	mov    %edx,0x8(%esp)
  51:	89 4c 24 04          	mov    %ecx,0x4(%esp)
  55:	89 34 24             	mov    %esi,(%esp)
  58:	e8 83 01 00 00       	call   1e0 <memset>
    if(fork() > 0)
  5d:	e8 0e 03 00 00       	call   370 <fork>
  62:	85 c0                	test   %eax,%eax
  64:	0f 8f de 00 00 00    	jg     148 <main+0x148>
  for(i = 0; i < 4; i++)
  6a:	43                   	inc    %ebx
  6b:	83 fb 04             	cmp    $0x4,%ebx
  6e:	66 90                	xchg   %ax,%ax
  70:	75 eb                	jne    5d <main+0x5d>
  72:	b0 04                	mov    $0x4,%al
  74:	88 44 24 1f          	mov    %al,0x1f(%esp)
      break;

  printf(1, "write %d\n", i);
  78:	b8 6b 08 00 00       	mov    $0x86b,%eax
  7d:	89 5c 24 08          	mov    %ebx,0x8(%esp)

  path[8] += i;
  fd = open(path, O_CREATE | O_RDWR);
  81:	bb 14 00 00 00       	mov    $0x14,%ebx
  printf(1, "write %d\n", i);
  86:	89 44 24 04          	mov    %eax,0x4(%esp)
  8a:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  91:	e8 4a 04 00 00       	call   4e0 <printf>
  path[8] += i;
  96:	0f b6 44 24 1f       	movzbl 0x1f(%esp),%eax
  9b:	00 44 24 2e          	add    %al,0x2e(%esp)
  fd = open(path, O_CREATE | O_RDWR);
  9f:	b8 02 02 00 00       	mov    $0x202,%eax
  a4:	89 44 24 04          	mov    %eax,0x4(%esp)
  a8:	8d 44 24 26          	lea    0x26(%esp),%eax
  ac:	89 04 24             	mov    %eax,(%esp)
  af:	e8 04 03 00 00       	call   3b8 <open>
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
  d0:	e8 c3 02 00 00       	call   398 <write>
  for(i = 0; i < 20; i++)
  d5:	4b                   	dec    %ebx
  d6:	75 e8                	jne    c0 <main+0xc0>
  close(fd);
  d8:	89 3c 24             	mov    %edi,(%esp)

  printf(1, "read\n");

  fd = open(path, O_RDONLY);
  db:	bb 14 00 00 00       	mov    $0x14,%ebx
  close(fd);
  e0:	e8 bb 02 00 00       	call   3a0 <close>
  printf(1, "read\n");
  e5:	ba 75 08 00 00       	mov    $0x875,%edx
  ea:	89 54 24 04          	mov    %edx,0x4(%esp)
  ee:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  f5:	e8 e6 03 00 00       	call   4e0 <printf>
  fd = open(path, O_RDONLY);
  fa:	31 c9                	xor    %ecx,%ecx
  fc:	8d 44 24 26          	lea    0x26(%esp),%eax
 100:	89 4c 24 04          	mov    %ecx,0x4(%esp)
 104:	89 04 24             	mov    %eax,(%esp)
 107:	e8 ac 02 00 00       	call   3b8 <open>
 10c:	89 c7                	mov    %eax,%edi
 10e:	66 90                	xchg   %ax,%ax
  for (i = 0; i < 20; i++)
    read(fd, data, sizeof(data));
 110:	b8 00 02 00 00       	mov    $0x200,%eax
 115:	89 44 24 08          	mov    %eax,0x8(%esp)
 119:	89 74 24 04          	mov    %esi,0x4(%esp)
 11d:	89 3c 24             	mov    %edi,(%esp)
 120:	e8 6b 02 00 00       	call   390 <read>
  for (i = 0; i < 20; i++)
 125:	4b                   	dec    %ebx
 126:	75 e8                	jne    110 <main+0x110>
  close(fd);
 128:	89 3c 24             	mov    %edi,(%esp)
 12b:	e8 70 02 00 00       	call   3a0 <close>

  wait(0);
 130:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 137:	e8 44 02 00 00       	call   380 <wait>

  exit(0);
 13c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 143:	e8 30 02 00 00       	call   378 <exit>
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
 176:	53                   	push   %ebx
 177:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  while(*p && *p == *q)
 17a:	0f b6 01             	movzbl (%ecx),%eax
 17d:	0f b6 13             	movzbl (%ebx),%edx
 180:	84 c0                	test   %al,%al
 182:	75 18                	jne    19c <strcmp+0x2c>
 184:	eb 22                	jmp    1a8 <strcmp+0x38>
 186:	8d 76 00             	lea    0x0(%esi),%esi
 189:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
 190:	41                   	inc    %ecx
  while(*p && *p == *q)
 191:	0f b6 01             	movzbl (%ecx),%eax
    p++, q++;
 194:	43                   	inc    %ebx
 195:	0f b6 13             	movzbl (%ebx),%edx
  while(*p && *p == *q)
 198:	84 c0                	test   %al,%al
 19a:	74 0c                	je     1a8 <strcmp+0x38>
 19c:	38 d0                	cmp    %dl,%al
 19e:	74 f0                	je     190 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
}
 1a0:	5b                   	pop    %ebx
  return (uchar)*p - (uchar)*q;
 1a1:	29 d0                	sub    %edx,%eax
}
 1a3:	5d                   	pop    %ebp
 1a4:	c3                   	ret    
 1a5:	8d 76 00             	lea    0x0(%esi),%esi
 1a8:	5b                   	pop    %ebx
 1a9:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
 1ab:	29 d0                	sub    %edx,%eax
}
 1ad:	5d                   	pop    %ebp
 1ae:	c3                   	ret    
 1af:	90                   	nop

000001b0 <strlen>:

uint
strlen(const char *s)
{
 1b0:	55                   	push   %ebp
 1b1:	89 e5                	mov    %esp,%ebp
 1b3:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
 1b6:	80 39 00             	cmpb   $0x0,(%ecx)
 1b9:	74 15                	je     1d0 <strlen+0x20>
 1bb:	31 d2                	xor    %edx,%edx
 1bd:	8d 76 00             	lea    0x0(%esi),%esi
 1c0:	42                   	inc    %edx
 1c1:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 1c5:	89 d0                	mov    %edx,%eax
 1c7:	75 f7                	jne    1c0 <strlen+0x10>
    ;
  return n;
}
 1c9:	5d                   	pop    %ebp
 1ca:	c3                   	ret    
 1cb:	90                   	nop
 1cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(n = 0; s[n]; n++)
 1d0:	31 c0                	xor    %eax,%eax
}
 1d2:	5d                   	pop    %ebp
 1d3:	c3                   	ret    
 1d4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 1da:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

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
  for(; *s; s++)
 224:	40                   	inc    %eax
 225:	0f b6 10             	movzbl (%eax),%edx
 228:	84 d2                	test   %dl,%dl
 22a:	75 f4                	jne    220 <strchr+0x20>
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
{
 237:	53                   	push   %ebx
 238:	83 ec 3c             	sub    $0x3c,%esp
 23b:	8b 5d 08             	mov    0x8(%ebp),%ebx
    cc = read(0, &c, 1);
 23e:	8d 7d e7             	lea    -0x19(%ebp),%edi
  for(i=0; i+1 < max; ){
 241:	eb 32                	jmp    275 <gets+0x45>
 243:	90                   	nop
 244:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    cc = read(0, &c, 1);
 248:	ba 01 00 00 00       	mov    $0x1,%edx
 24d:	89 54 24 08          	mov    %edx,0x8(%esp)
 251:	89 7c 24 04          	mov    %edi,0x4(%esp)
 255:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 25c:	e8 2f 01 00 00       	call   390 <read>
    if(cc < 1)
 261:	85 c0                	test   %eax,%eax
 263:	7e 19                	jle    27e <gets+0x4e>
      break;
    buf[i++] = c;
 265:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 269:	43                   	inc    %ebx
 26a:	88 43 ff             	mov    %al,-0x1(%ebx)
    if(c == '\n' || c == '\r')
 26d:	3c 0a                	cmp    $0xa,%al
 26f:	74 1f                	je     290 <gets+0x60>
 271:	3c 0d                	cmp    $0xd,%al
 273:	74 1b                	je     290 <gets+0x60>
  for(i=0; i+1 < max; ){
 275:	46                   	inc    %esi
 276:	3b 75 0c             	cmp    0xc(%ebp),%esi
 279:	89 5d d4             	mov    %ebx,-0x2c(%ebp)
 27c:	7c ca                	jl     248 <gets+0x18>
      break;
  }
  buf[i] = '\0';
 27e:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 281:	c6 00 00             	movb   $0x0,(%eax)
  return buf;
}
 284:	8b 45 08             	mov    0x8(%ebp),%eax
 287:	83 c4 3c             	add    $0x3c,%esp
 28a:	5b                   	pop    %ebx
 28b:	5e                   	pop    %esi
 28c:	5f                   	pop    %edi
 28d:	5d                   	pop    %ebp
 28e:	c3                   	ret    
 28f:	90                   	nop
 290:	8b 45 08             	mov    0x8(%ebp),%eax
 293:	01 c6                	add    %eax,%esi
 295:	89 75 d4             	mov    %esi,-0x2c(%ebp)
 298:	eb e4                	jmp    27e <gets+0x4e>
 29a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000002a0 <stat>:

int
stat(const char *n, struct stat *st)
{
 2a0:	55                   	push   %ebp
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 2a1:	31 c0                	xor    %eax,%eax
{
 2a3:	89 e5                	mov    %esp,%ebp
 2a5:	83 ec 18             	sub    $0x18,%esp
  fd = open(n, O_RDONLY);
 2a8:	89 44 24 04          	mov    %eax,0x4(%esp)
 2ac:	8b 45 08             	mov    0x8(%ebp),%eax
{
 2af:	89 5d f8             	mov    %ebx,-0x8(%ebp)
 2b2:	89 75 fc             	mov    %esi,-0x4(%ebp)
  fd = open(n, O_RDONLY);
 2b5:	89 04 24             	mov    %eax,(%esp)
 2b8:	e8 fb 00 00 00       	call   3b8 <open>
  if(fd < 0)
 2bd:	85 c0                	test   %eax,%eax
 2bf:	78 2f                	js     2f0 <stat+0x50>
 2c1:	89 c3                	mov    %eax,%ebx
    return -1;
  r = fstat(fd, st);
 2c3:	8b 45 0c             	mov    0xc(%ebp),%eax
 2c6:	89 1c 24             	mov    %ebx,(%esp)
 2c9:	89 44 24 04          	mov    %eax,0x4(%esp)
 2cd:	e8 fe 00 00 00       	call   3d0 <fstat>
  close(fd);
 2d2:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 2d5:	89 c6                	mov    %eax,%esi
  close(fd);
 2d7:	e8 c4 00 00 00       	call   3a0 <close>
  return r;
}
 2dc:	89 f0                	mov    %esi,%eax
 2de:	8b 5d f8             	mov    -0x8(%ebp),%ebx
 2e1:	8b 75 fc             	mov    -0x4(%ebp),%esi
 2e4:	89 ec                	mov    %ebp,%esp
 2e6:	5d                   	pop    %ebp
 2e7:	c3                   	ret    
 2e8:	90                   	nop
 2e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    return -1;
 2f0:	be ff ff ff ff       	mov    $0xffffffff,%esi
 2f5:	eb e5                	jmp    2dc <stat+0x3c>
 2f7:	89 f6                	mov    %esi,%esi
 2f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000300 <atoi>:

int
atoi(const char *s)
{
 300:	55                   	push   %ebp
 301:	89 e5                	mov    %esp,%ebp
 303:	8b 4d 08             	mov    0x8(%ebp),%ecx
 306:	53                   	push   %ebx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 307:	0f be 11             	movsbl (%ecx),%edx
 30a:	88 d0                	mov    %dl,%al
 30c:	2c 30                	sub    $0x30,%al
 30e:	3c 09                	cmp    $0x9,%al
  n = 0;
 310:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
 315:	77 1e                	ja     335 <atoi+0x35>
 317:	89 f6                	mov    %esi,%esi
 319:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
 320:	41                   	inc    %ecx
 321:	8d 04 80             	lea    (%eax,%eax,4),%eax
 324:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
 328:	0f be 11             	movsbl (%ecx),%edx
 32b:	88 d3                	mov    %dl,%bl
 32d:	80 eb 30             	sub    $0x30,%bl
 330:	80 fb 09             	cmp    $0x9,%bl
 333:	76 eb                	jbe    320 <atoi+0x20>
  return n;
}
 335:	5b                   	pop    %ebx
 336:	5d                   	pop    %ebp
 337:	c3                   	ret    
 338:	90                   	nop
 339:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000340 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 340:	55                   	push   %ebp
 341:	89 e5                	mov    %esp,%ebp
 343:	56                   	push   %esi
 344:	8b 45 08             	mov    0x8(%ebp),%eax
 347:	53                   	push   %ebx
 348:	8b 5d 10             	mov    0x10(%ebp),%ebx
 34b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 34e:	85 db                	test   %ebx,%ebx
 350:	7e 1a                	jle    36c <memmove+0x2c>
 352:	31 d2                	xor    %edx,%edx
 354:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 35a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi
    *dst++ = *src++;
 360:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 364:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 367:	42                   	inc    %edx
  while(n-- > 0)
 368:	39 d3                	cmp    %edx,%ebx
 36a:	75 f4                	jne    360 <memmove+0x20>
  return vdst;
}
 36c:	5b                   	pop    %ebx
 36d:	5e                   	pop    %esi
 36e:	5d                   	pop    %ebp
 36f:	c3                   	ret    

00000370 <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 370:	b8 01 00 00 00       	mov    $0x1,%eax
 375:	cd 40                	int    $0x40
 377:	c3                   	ret    

00000378 <exit>:
SYSCALL(exit)
 378:	b8 02 00 00 00       	mov    $0x2,%eax
 37d:	cd 40                	int    $0x40
 37f:	c3                   	ret    

00000380 <wait>:
SYSCALL(wait)
 380:	b8 03 00 00 00       	mov    $0x3,%eax
 385:	cd 40                	int    $0x40
 387:	c3                   	ret    

00000388 <pipe>:
SYSCALL(pipe)
 388:	b8 04 00 00 00       	mov    $0x4,%eax
 38d:	cd 40                	int    $0x40
 38f:	c3                   	ret    

00000390 <read>:
SYSCALL(read)
 390:	b8 05 00 00 00       	mov    $0x5,%eax
 395:	cd 40                	int    $0x40
 397:	c3                   	ret    

00000398 <write>:
SYSCALL(write)
 398:	b8 10 00 00 00       	mov    $0x10,%eax
 39d:	cd 40                	int    $0x40
 39f:	c3                   	ret    

000003a0 <close>:
SYSCALL(close)
 3a0:	b8 15 00 00 00       	mov    $0x15,%eax
 3a5:	cd 40                	int    $0x40
 3a7:	c3                   	ret    

000003a8 <kill>:
SYSCALL(kill)
 3a8:	b8 06 00 00 00       	mov    $0x6,%eax
 3ad:	cd 40                	int    $0x40
 3af:	c3                   	ret    

000003b0 <exec>:
SYSCALL(exec)
 3b0:	b8 07 00 00 00       	mov    $0x7,%eax
 3b5:	cd 40                	int    $0x40
 3b7:	c3                   	ret    

000003b8 <open>:
SYSCALL(open)
 3b8:	b8 0f 00 00 00       	mov    $0xf,%eax
 3bd:	cd 40                	int    $0x40
 3bf:	c3                   	ret    

000003c0 <mknod>:
SYSCALL(mknod)
 3c0:	b8 11 00 00 00       	mov    $0x11,%eax
 3c5:	cd 40                	int    $0x40
 3c7:	c3                   	ret    

000003c8 <unlink>:
SYSCALL(unlink)
 3c8:	b8 12 00 00 00       	mov    $0x12,%eax
 3cd:	cd 40                	int    $0x40
 3cf:	c3                   	ret    

000003d0 <fstat>:
SYSCALL(fstat)
 3d0:	b8 08 00 00 00       	mov    $0x8,%eax
 3d5:	cd 40                	int    $0x40
 3d7:	c3                   	ret    

000003d8 <link>:
SYSCALL(link)
 3d8:	b8 13 00 00 00       	mov    $0x13,%eax
 3dd:	cd 40                	int    $0x40
 3df:	c3                   	ret    

000003e0 <mkdir>:
SYSCALL(mkdir)
 3e0:	b8 14 00 00 00       	mov    $0x14,%eax
 3e5:	cd 40                	int    $0x40
 3e7:	c3                   	ret    

000003e8 <chdir>:
SYSCALL(chdir)
 3e8:	b8 09 00 00 00       	mov    $0x9,%eax
 3ed:	cd 40                	int    $0x40
 3ef:	c3                   	ret    

000003f0 <dup>:
SYSCALL(dup)
 3f0:	b8 0a 00 00 00       	mov    $0xa,%eax
 3f5:	cd 40                	int    $0x40
 3f7:	c3                   	ret    

000003f8 <getpid>:
SYSCALL(getpid)
 3f8:	b8 0b 00 00 00       	mov    $0xb,%eax
 3fd:	cd 40                	int    $0x40
 3ff:	c3                   	ret    

00000400 <sbrk>:
SYSCALL(sbrk)
 400:	b8 0c 00 00 00       	mov    $0xc,%eax
 405:	cd 40                	int    $0x40
 407:	c3                   	ret    

00000408 <sleep>:
SYSCALL(sleep)
 408:	b8 0d 00 00 00       	mov    $0xd,%eax
 40d:	cd 40                	int    $0x40
 40f:	c3                   	ret    

00000410 <uptime>:
SYSCALL(uptime)
 410:	b8 0e 00 00 00       	mov    $0xe,%eax
 415:	cd 40                	int    $0x40
 417:	c3                   	ret    

00000418 <policy>:
SYSCALL(policy)
 418:	b8 17 00 00 00       	mov    $0x17,%eax
 41d:	cd 40                	int    $0x40
 41f:	c3                   	ret    

00000420 <detach>:
SYSCALL(detach)
 420:	b8 16 00 00 00       	mov    $0x16,%eax
 425:	cd 40                	int    $0x40
 427:	c3                   	ret    

00000428 <priority>:
SYSCALL(priority)
 428:	b8 18 00 00 00       	mov    $0x18,%eax
 42d:	cd 40                	int    $0x40
 42f:	c3                   	ret    

00000430 <wait_stat>:
SYSCALL(wait_stat)
 430:	b8 19 00 00 00       	mov    $0x19,%eax
 435:	cd 40                	int    $0x40
 437:	c3                   	ret    
 438:	66 90                	xchg   %ax,%ax
 43a:	66 90                	xchg   %ax,%ax
 43c:	66 90                	xchg   %ax,%ax
 43e:	66 90                	xchg   %ax,%ax

00000440 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 440:	55                   	push   %ebp
 441:	89 e5                	mov    %esp,%ebp
 443:	57                   	push   %edi
 444:	56                   	push   %esi
 445:	53                   	push   %ebx
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 446:	89 d3                	mov    %edx,%ebx
 448:	c1 eb 1f             	shr    $0x1f,%ebx
{
 44b:	83 ec 4c             	sub    $0x4c,%esp
  if(sgn && xx < 0){
 44e:	84 db                	test   %bl,%bl
{
 450:	89 45 c0             	mov    %eax,-0x40(%ebp)
 453:	89 d0                	mov    %edx,%eax
  if(sgn && xx < 0){
 455:	74 79                	je     4d0 <printint+0x90>
 457:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 45b:	74 73                	je     4d0 <printint+0x90>
    neg = 1;
    x = -xx;
 45d:	f7 d8                	neg    %eax
    neg = 1;
 45f:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
  } else {
    x = xx;
  }

  i = 0;
 466:	31 f6                	xor    %esi,%esi
 468:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 46b:	eb 05                	jmp    472 <printint+0x32>
 46d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 470:	89 fe                	mov    %edi,%esi
 472:	31 d2                	xor    %edx,%edx
 474:	f7 f1                	div    %ecx
 476:	8d 7e 01             	lea    0x1(%esi),%edi
 479:	0f b6 92 84 08 00 00 	movzbl 0x884(%edx),%edx
  }while((x /= base) != 0);
 480:	85 c0                	test   %eax,%eax
    buf[i++] = digits[x % base];
 482:	88 14 3b             	mov    %dl,(%ebx,%edi,1)
  }while((x /= base) != 0);
 485:	75 e9                	jne    470 <printint+0x30>
  if(neg)
 487:	8b 55 c4             	mov    -0x3c(%ebp),%edx
 48a:	85 d2                	test   %edx,%edx
 48c:	74 08                	je     496 <printint+0x56>
    buf[i++] = '-';
 48e:	c6 44 3d d8 2d       	movb   $0x2d,-0x28(%ebp,%edi,1)
 493:	8d 7e 02             	lea    0x2(%esi),%edi
 496:	8d 74 3d d7          	lea    -0x29(%ebp,%edi,1),%esi
 49a:	8b 7d c0             	mov    -0x40(%ebp),%edi
 49d:	8d 76 00             	lea    0x0(%esi),%esi
 4a0:	0f b6 06             	movzbl (%esi),%eax
 4a3:	4e                   	dec    %esi
  write(fd, &c, 1);
 4a4:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 4a8:	89 3c 24             	mov    %edi,(%esp)
 4ab:	88 45 d7             	mov    %al,-0x29(%ebp)
 4ae:	b8 01 00 00 00       	mov    $0x1,%eax
 4b3:	89 44 24 08          	mov    %eax,0x8(%esp)
 4b7:	e8 dc fe ff ff       	call   398 <write>

  while(--i >= 0)
 4bc:	39 de                	cmp    %ebx,%esi
 4be:	75 e0                	jne    4a0 <printint+0x60>
    putc(fd, buf[i]);
}
 4c0:	83 c4 4c             	add    $0x4c,%esp
 4c3:	5b                   	pop    %ebx
 4c4:	5e                   	pop    %esi
 4c5:	5f                   	pop    %edi
 4c6:	5d                   	pop    %ebp
 4c7:	c3                   	ret    
 4c8:	90                   	nop
 4c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 4d0:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 4d7:	eb 8d                	jmp    466 <printint+0x26>
 4d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000004e0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 4e0:	55                   	push   %ebp
 4e1:	89 e5                	mov    %esp,%ebp
 4e3:	57                   	push   %edi
 4e4:	56                   	push   %esi
 4e5:	53                   	push   %ebx
 4e6:	83 ec 3c             	sub    $0x3c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 4e9:	8b 75 0c             	mov    0xc(%ebp),%esi
 4ec:	0f b6 1e             	movzbl (%esi),%ebx
 4ef:	84 db                	test   %bl,%bl
 4f1:	0f 84 d1 00 00 00    	je     5c8 <printf+0xe8>
  state = 0;
 4f7:	31 ff                	xor    %edi,%edi
 4f9:	46                   	inc    %esi
  ap = (uint*)(void*)&fmt + 1;
 4fa:	8d 45 10             	lea    0x10(%ebp),%eax
  write(fd, &c, 1);
 4fd:	89 fa                	mov    %edi,%edx
 4ff:	8b 7d 08             	mov    0x8(%ebp),%edi
  ap = (uint*)(void*)&fmt + 1;
 502:	89 45 d0             	mov    %eax,-0x30(%ebp)
 505:	eb 41                	jmp    548 <printf+0x68>
 507:	89 f6                	mov    %esi,%esi
 509:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 510:	83 f8 25             	cmp    $0x25,%eax
 513:	89 55 d4             	mov    %edx,-0x2c(%ebp)
        state = '%';
 516:	ba 25 00 00 00       	mov    $0x25,%edx
      if(c == '%'){
 51b:	74 1e                	je     53b <printf+0x5b>
  write(fd, &c, 1);
 51d:	b8 01 00 00 00       	mov    $0x1,%eax
 522:	89 44 24 08          	mov    %eax,0x8(%esp)
 526:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 529:	89 44 24 04          	mov    %eax,0x4(%esp)
 52d:	89 3c 24             	mov    %edi,(%esp)
 530:	88 5d e2             	mov    %bl,-0x1e(%ebp)
 533:	e8 60 fe ff ff       	call   398 <write>
 538:	8b 55 d4             	mov    -0x2c(%ebp),%edx
 53b:	46                   	inc    %esi
  for(i = 0; fmt[i]; i++){
 53c:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
 540:	84 db                	test   %bl,%bl
 542:	0f 84 80 00 00 00    	je     5c8 <printf+0xe8>
    if(state == 0){
 548:	85 d2                	test   %edx,%edx
    c = fmt[i] & 0xff;
 54a:	0f be cb             	movsbl %bl,%ecx
 54d:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
 550:	74 be                	je     510 <printf+0x30>
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
 552:	83 fa 25             	cmp    $0x25,%edx
 555:	75 e4                	jne    53b <printf+0x5b>
      if(c == 'd'){
 557:	83 f8 64             	cmp    $0x64,%eax
 55a:	0f 84 f0 00 00 00    	je     650 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 560:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
 566:	83 f9 70             	cmp    $0x70,%ecx
 569:	74 65                	je     5d0 <printf+0xf0>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 56b:	83 f8 73             	cmp    $0x73,%eax
 56e:	0f 84 8c 00 00 00    	je     600 <printf+0x120>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 574:	83 f8 63             	cmp    $0x63,%eax
 577:	0f 84 13 01 00 00    	je     690 <printf+0x1b0>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 57d:	83 f8 25             	cmp    $0x25,%eax
 580:	0f 84 e2 00 00 00    	je     668 <printf+0x188>
  write(fd, &c, 1);
 586:	b8 01 00 00 00       	mov    $0x1,%eax
 58b:	46                   	inc    %esi
 58c:	89 44 24 08          	mov    %eax,0x8(%esp)
 590:	8d 45 e7             	lea    -0x19(%ebp),%eax
 593:	89 44 24 04          	mov    %eax,0x4(%esp)
 597:	89 3c 24             	mov    %edi,(%esp)
 59a:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 59e:	e8 f5 fd ff ff       	call   398 <write>
 5a3:	ba 01 00 00 00       	mov    $0x1,%edx
 5a8:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 5ab:	89 54 24 08          	mov    %edx,0x8(%esp)
 5af:	89 44 24 04          	mov    %eax,0x4(%esp)
 5b3:	89 3c 24             	mov    %edi,(%esp)
 5b6:	88 5d e6             	mov    %bl,-0x1a(%ebp)
 5b9:	e8 da fd ff ff       	call   398 <write>
  for(i = 0; fmt[i]; i++){
 5be:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 5c2:	31 d2                	xor    %edx,%edx
  for(i = 0; fmt[i]; i++){
 5c4:	84 db                	test   %bl,%bl
 5c6:	75 80                	jne    548 <printf+0x68>
    }
  }
}
 5c8:	83 c4 3c             	add    $0x3c,%esp
 5cb:	5b                   	pop    %ebx
 5cc:	5e                   	pop    %esi
 5cd:	5f                   	pop    %edi
 5ce:	5d                   	pop    %ebp
 5cf:	c3                   	ret    
        printint(fd, *ap, 16, 0);
 5d0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 5d7:	b9 10 00 00 00       	mov    $0x10,%ecx
 5dc:	8b 5d d0             	mov    -0x30(%ebp),%ebx
 5df:	89 f8                	mov    %edi,%eax
 5e1:	8b 13                	mov    (%ebx),%edx
 5e3:	e8 58 fe ff ff       	call   440 <printint>
        ap++;
 5e8:	89 d8                	mov    %ebx,%eax
      state = 0;
 5ea:	31 d2                	xor    %edx,%edx
        ap++;
 5ec:	83 c0 04             	add    $0x4,%eax
 5ef:	89 45 d0             	mov    %eax,-0x30(%ebp)
 5f2:	e9 44 ff ff ff       	jmp    53b <printf+0x5b>
 5f7:	89 f6                	mov    %esi,%esi
 5f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
        s = (char*)*ap;
 600:	8b 45 d0             	mov    -0x30(%ebp),%eax
 603:	8b 10                	mov    (%eax),%edx
        ap++;
 605:	83 c0 04             	add    $0x4,%eax
 608:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
 60b:	85 d2                	test   %edx,%edx
 60d:	0f 84 aa 00 00 00    	je     6bd <printf+0x1dd>
        while(*s != 0){
 613:	0f b6 02             	movzbl (%edx),%eax
        s = (char*)*ap;
 616:	89 d3                	mov    %edx,%ebx
        while(*s != 0){
 618:	84 c0                	test   %al,%al
 61a:	74 27                	je     643 <printf+0x163>
 61c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 620:	88 45 e3             	mov    %al,-0x1d(%ebp)
  write(fd, &c, 1);
 623:	b8 01 00 00 00       	mov    $0x1,%eax
          s++;
 628:	43                   	inc    %ebx
  write(fd, &c, 1);
 629:	89 44 24 08          	mov    %eax,0x8(%esp)
 62d:	8d 45 e3             	lea    -0x1d(%ebp),%eax
 630:	89 44 24 04          	mov    %eax,0x4(%esp)
 634:	89 3c 24             	mov    %edi,(%esp)
 637:	e8 5c fd ff ff       	call   398 <write>
        while(*s != 0){
 63c:	0f b6 03             	movzbl (%ebx),%eax
 63f:	84 c0                	test   %al,%al
 641:	75 dd                	jne    620 <printf+0x140>
      state = 0;
 643:	31 d2                	xor    %edx,%edx
 645:	e9 f1 fe ff ff       	jmp    53b <printf+0x5b>
 64a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
 650:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 657:	b9 0a 00 00 00       	mov    $0xa,%ecx
 65c:	e9 7b ff ff ff       	jmp    5dc <printf+0xfc>
 661:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  write(fd, &c, 1);
 668:	b9 01 00 00 00       	mov    $0x1,%ecx
 66d:	8d 45 e5             	lea    -0x1b(%ebp),%eax
 670:	89 4c 24 08          	mov    %ecx,0x8(%esp)
 674:	89 44 24 04          	mov    %eax,0x4(%esp)
 678:	89 3c 24             	mov    %edi,(%esp)
 67b:	88 5d e5             	mov    %bl,-0x1b(%ebp)
 67e:	e8 15 fd ff ff       	call   398 <write>
      state = 0;
 683:	31 d2                	xor    %edx,%edx
 685:	e9 b1 fe ff ff       	jmp    53b <printf+0x5b>
 68a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        putc(fd, *ap);
 690:	8b 5d d0             	mov    -0x30(%ebp),%ebx
 693:	8b 03                	mov    (%ebx),%eax
        ap++;
 695:	83 c3 04             	add    $0x4,%ebx
  write(fd, &c, 1);
 698:	89 3c 24             	mov    %edi,(%esp)
        putc(fd, *ap);
 69b:	88 45 e4             	mov    %al,-0x1c(%ebp)
  write(fd, &c, 1);
 69e:	b8 01 00 00 00       	mov    $0x1,%eax
 6a3:	89 44 24 08          	mov    %eax,0x8(%esp)
 6a7:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 6aa:	89 44 24 04          	mov    %eax,0x4(%esp)
 6ae:	e8 e5 fc ff ff       	call   398 <write>
      state = 0;
 6b3:	31 d2                	xor    %edx,%edx
        ap++;
 6b5:	89 5d d0             	mov    %ebx,-0x30(%ebp)
 6b8:	e9 7e fe ff ff       	jmp    53b <printf+0x5b>
          s = "(null)";
 6bd:	bb 7b 08 00 00       	mov    $0x87b,%ebx
        while(*s != 0){
 6c2:	b0 28                	mov    $0x28,%al
 6c4:	e9 57 ff ff ff       	jmp    620 <printf+0x140>
 6c9:	66 90                	xchg   %ax,%ax
 6cb:	66 90                	xchg   %ax,%ax
 6cd:	66 90                	xchg   %ax,%ax
 6cf:	90                   	nop

000006d0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 6d0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 6d1:	a1 14 0b 00 00       	mov    0xb14,%eax
{
 6d6:	89 e5                	mov    %esp,%ebp
 6d8:	57                   	push   %edi
 6d9:	56                   	push   %esi
 6da:	53                   	push   %ebx
 6db:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 6de:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 6e1:	eb 0d                	jmp    6f0 <free+0x20>
 6e3:	90                   	nop
 6e4:	90                   	nop
 6e5:	90                   	nop
 6e6:	90                   	nop
 6e7:	90                   	nop
 6e8:	90                   	nop
 6e9:	90                   	nop
 6ea:	90                   	nop
 6eb:	90                   	nop
 6ec:	90                   	nop
 6ed:	90                   	nop
 6ee:	90                   	nop
 6ef:	90                   	nop
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 6f0:	39 c8                	cmp    %ecx,%eax
 6f2:	8b 10                	mov    (%eax),%edx
 6f4:	73 32                	jae    728 <free+0x58>
 6f6:	39 d1                	cmp    %edx,%ecx
 6f8:	72 04                	jb     6fe <free+0x2e>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 6fa:	39 d0                	cmp    %edx,%eax
 6fc:	72 32                	jb     730 <free+0x60>
      break;
  if(bp + bp->s.size == p->s.ptr){
 6fe:	8b 73 fc             	mov    -0x4(%ebx),%esi
 701:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 704:	39 fa                	cmp    %edi,%edx
 706:	74 30                	je     738 <free+0x68>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
 708:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 70b:	8b 50 04             	mov    0x4(%eax),%edx
 70e:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 711:	39 f1                	cmp    %esi,%ecx
 713:	74 3c                	je     751 <free+0x81>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
 715:	89 08                	mov    %ecx,(%eax)
  freep = p;
}
 717:	5b                   	pop    %ebx
  freep = p;
 718:	a3 14 0b 00 00       	mov    %eax,0xb14
}
 71d:	5e                   	pop    %esi
 71e:	5f                   	pop    %edi
 71f:	5d                   	pop    %ebp
 720:	c3                   	ret    
 721:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 728:	39 d0                	cmp    %edx,%eax
 72a:	72 04                	jb     730 <free+0x60>
 72c:	39 d1                	cmp    %edx,%ecx
 72e:	72 ce                	jb     6fe <free+0x2e>
{
 730:	89 d0                	mov    %edx,%eax
 732:	eb bc                	jmp    6f0 <free+0x20>
 734:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bp->s.size += p->s.ptr->s.size;
 738:	8b 7a 04             	mov    0x4(%edx),%edi
 73b:	01 fe                	add    %edi,%esi
 73d:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 740:	8b 10                	mov    (%eax),%edx
 742:	8b 12                	mov    (%edx),%edx
 744:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 747:	8b 50 04             	mov    0x4(%eax),%edx
 74a:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 74d:	39 f1                	cmp    %esi,%ecx
 74f:	75 c4                	jne    715 <free+0x45>
    p->s.size += bp->s.size;
 751:	8b 4b fc             	mov    -0x4(%ebx),%ecx
  freep = p;
 754:	a3 14 0b 00 00       	mov    %eax,0xb14
    p->s.size += bp->s.size;
 759:	01 ca                	add    %ecx,%edx
 75b:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 75e:	8b 53 f8             	mov    -0x8(%ebx),%edx
 761:	89 10                	mov    %edx,(%eax)
}
 763:	5b                   	pop    %ebx
 764:	5e                   	pop    %esi
 765:	5f                   	pop    %edi
 766:	5d                   	pop    %ebp
 767:	c3                   	ret    
 768:	90                   	nop
 769:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000770 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 770:	55                   	push   %ebp
 771:	89 e5                	mov    %esp,%ebp
 773:	57                   	push   %edi
 774:	56                   	push   %esi
 775:	53                   	push   %ebx
 776:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 779:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 77c:	8b 15 14 0b 00 00    	mov    0xb14,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 782:	8d 78 07             	lea    0x7(%eax),%edi
 785:	c1 ef 03             	shr    $0x3,%edi
 788:	47                   	inc    %edi
  if((prevp = freep) == 0){
 789:	85 d2                	test   %edx,%edx
 78b:	0f 84 8f 00 00 00    	je     820 <malloc+0xb0>
 791:	8b 02                	mov    (%edx),%eax
 793:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
 796:	39 cf                	cmp    %ecx,%edi
 798:	76 66                	jbe    800 <malloc+0x90>
 79a:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
 7a0:	bb 00 10 00 00       	mov    $0x1000,%ebx
 7a5:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
 7a8:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
 7af:	eb 10                	jmp    7c1 <malloc+0x51>
 7b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 7b8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 7ba:	8b 48 04             	mov    0x4(%eax),%ecx
 7bd:	39 f9                	cmp    %edi,%ecx
 7bf:	73 3f                	jae    800 <malloc+0x90>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 7c1:	39 05 14 0b 00 00    	cmp    %eax,0xb14
 7c7:	89 c2                	mov    %eax,%edx
 7c9:	75 ed                	jne    7b8 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 7cb:	89 34 24             	mov    %esi,(%esp)
 7ce:	e8 2d fc ff ff       	call   400 <sbrk>
  if(p == (char*)-1)
 7d3:	83 f8 ff             	cmp    $0xffffffff,%eax
 7d6:	74 18                	je     7f0 <malloc+0x80>
  hp->s.size = nu;
 7d8:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 7db:	83 c0 08             	add    $0x8,%eax
 7de:	89 04 24             	mov    %eax,(%esp)
 7e1:	e8 ea fe ff ff       	call   6d0 <free>
  return freep;
 7e6:	8b 15 14 0b 00 00    	mov    0xb14,%edx
      if((p = morecore(nunits)) == 0)
 7ec:	85 d2                	test   %edx,%edx
 7ee:	75 c8                	jne    7b8 <malloc+0x48>
        return 0;
  }
}
 7f0:	83 c4 1c             	add    $0x1c,%esp
        return 0;
 7f3:	31 c0                	xor    %eax,%eax
}
 7f5:	5b                   	pop    %ebx
 7f6:	5e                   	pop    %esi
 7f7:	5f                   	pop    %edi
 7f8:	5d                   	pop    %ebp
 7f9:	c3                   	ret    
 7fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 800:	39 cf                	cmp    %ecx,%edi
 802:	74 4c                	je     850 <malloc+0xe0>
        p->s.size -= nunits;
 804:	29 f9                	sub    %edi,%ecx
 806:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 809:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 80c:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
 80f:	89 15 14 0b 00 00    	mov    %edx,0xb14
}
 815:	83 c4 1c             	add    $0x1c,%esp
      return (void*)(p + 1);
 818:	83 c0 08             	add    $0x8,%eax
}
 81b:	5b                   	pop    %ebx
 81c:	5e                   	pop    %esi
 81d:	5f                   	pop    %edi
 81e:	5d                   	pop    %ebp
 81f:	c3                   	ret    
    base.s.ptr = freep = prevp = &base;
 820:	b8 18 0b 00 00       	mov    $0xb18,%eax
 825:	ba 18 0b 00 00       	mov    $0xb18,%edx
    base.s.size = 0;
 82a:	31 c9                	xor    %ecx,%ecx
    base.s.ptr = freep = prevp = &base;
 82c:	a3 14 0b 00 00       	mov    %eax,0xb14
    base.s.size = 0;
 831:	b8 18 0b 00 00       	mov    $0xb18,%eax
    base.s.ptr = freep = prevp = &base;
 836:	89 15 18 0b 00 00    	mov    %edx,0xb18
    base.s.size = 0;
 83c:	89 0d 1c 0b 00 00    	mov    %ecx,0xb1c
 842:	e9 53 ff ff ff       	jmp    79a <malloc+0x2a>
 847:	89 f6                	mov    %esi,%esi
 849:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
        prevp->s.ptr = p->s.ptr;
 850:	8b 08                	mov    (%eax),%ecx
 852:	89 0a                	mov    %ecx,(%edx)
 854:	eb b9                	jmp    80f <malloc+0x9f>
