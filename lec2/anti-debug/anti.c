#include <stdio.h>
#include <stdlib.h>
#include <sys/ptrace.h>

int main() {
	if (ptrace(PTRACE_TRACEME, 0, 1, 0) == -1) {
		printf("Debugger detected! Exiting.\n");
		exit(1);
	}

	printf("No debugger detected. Welcome!\n");
	return 0;
}