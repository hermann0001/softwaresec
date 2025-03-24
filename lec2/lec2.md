lec 2

1. recap degli argomenti precedenti
	FOCUS:
	- static vs dynamic linking
		- demo on hello.c
		- dynamic compile: `gcc -o hello-dynamic hello.c`
		- static compile: `gcc -static -o hello-static hello.c`
		- show size diff: `ls -lh hello-*`
		- show linking deps: `ldd ./hello-*`
		- show printf symbols: [nm | readelf -s | objdump -t] hello-<static/dynamic> | grep printf
		- foreshadow LD_PRELOAD vuln: 
			+ compile the lib with: `gcc -shared -fPIC -o fakelib.so preload.c`
			+ run the bin with: `LD_PRELOAD=./fakelib.so ./hello-dynamic`
	- x86 instructions, intel syntax vs at&t syntax
		- demo on sw-07
		- objdump -d -M [intel | att] ./sw-07

2. gdb debugger
	- do the dynamic challenges to learn gdb
	- demo of skipping ptrace

3. pwntools demo (?)

4. buffer overflow

5. Demos:
	
	5.2. 02-overwriting stack variables:
		- file + checksec
		- execute
		- review sourcecode
		- gdb
		- pwntools script  (pwn template)
	5.3. 03-ret2win:
		- file + checksec
		- execute
		- review source code
		- find address with objdump -D
		- gdb cyclic find
		- pwntools