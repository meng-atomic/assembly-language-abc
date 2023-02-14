# How to Use GDB for Assembly Language
### TestCode
```
int main(int argc, char** argv){
    int a = 1;
    int b = 2;
    int c = a + b;
    return c;
}
```
### Compile
```bash
gcc -o main main.c
```
### Start GDB
```bash
gdb main
```
```shell
GNU gdb (Ubuntu 8.1.1-0ubuntu1) 8.1.1
Copyright (C) 2018 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later <http://gnu.org/licenses/gpl.html>
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.  Type "show copying"
and "show warranty" for details.
This GDB was configured as "x86_64-linux-gnu".
Type "show configuration" for configuration details.
For bug reporting instructions, please see:
<http://www.gnu.org/software/gdb/bugs/>.
Find the GDB manual and other documentation resources online at:
<http://www.gnu.org/software/gdb/documentation/>.
For help, type "help".
Type "apropos word" to search for commands related to "word"...
Reading symbols from main...(no debugging symbols found)...done.
(gdb)
```
### Set Source Code Search Path
if you are not start gdb 
In GDB prompt:
```
dir /mnt/datas/atomic/assembly-language-abc/start_guid
```
you will get the following output:
```
Source directories searched: /mnt/datas/atomic/assembly-language-abc/start_guid:$cdir:$cwd
```
### Add a Breakpoint
```
(gdb) b main      # add breakpoint at main entry
(gdb) b main.c:3  # add breakpoint at line 3 in main.c
```
### Check Register
```
(gdb) i r rbp
```
will give you the output:
```
rsp            0x7fffffffdc80   0x7fffffffdc80
```

### Appendix GDB commands
layout：用于分割窗口，可以一边查看代码，一边测试。主要有以下几种用法：  
layout src：显示源代码窗口  
layout asm：显示汇编窗口  
layout regs：显示源代码/汇编和寄存器窗口  
layout split：显示源代码和汇编窗口  
layout next：显示下一个layout  
layout prev：显示上一个layout  
Ctrl + L：刷新窗口  
Ctrl + x，再按1：单窗口模式，显示一个窗口  
Ctrl + x，再按2：双窗口模式，显示两个窗口  
Ctrl + x，再按a：回到传统模式，即退出layout，回到执行layout之前的调试窗口。  

