#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int main (int argc, char *argv[]){
    
    // data types dimension
    printf("sizeof(char)  = %d byte\n", (int)sizeof(char));
    printf("sizeof(short) = %d byte\n", (int)sizeof(short));
    printf("sizeof(int)   = %d byte\n", (int)sizeof(int));
    printf("----------------------------------------------\n");
    printf("sizeof(char*) = %d byte\n", (int)sizeof(char*)); 
    printf("sizeof(short*)= %d byte\n", (int)sizeof(short*));
    printf("sizeof(int*)  = %d byte\n", (int)sizeof(int*));

    // declare a char array
    char string[4] = "CTF";

    // question
    printf("sizeof(string) == strlen(string) => %d\n\n", sizeof(string) == strlen(string));

    // declare an int variable
    int var = 1;

    // declare pointer variable
    int* ptr;

    // note that data type of ptr and var must be same
    ptr = &var;

    // assign the address of a variable to a pointer
    printf("Value at ptr = %p \n", ptr);
    printf("Value at var = %d \n", var);
    printf("Value at *ptr = %d \n\n", *ptr);

    // declare a static array
    int static_array[3] = {1, 2, 3};
    
    // Assign the address of array[0] to ptr
    ptr = static_array;

    // question
    printf("static_array == &static_array[0] => %d\n\n", static_array == &static_array[0]);

    for (int i = 0; i < 3; i++) {
        
        // print value at position i in the array
        printf("Value of static_array[%d] = %d\n", i, static_array[i]);

        // print value at address which is stored in ptr
        printf("Value of *ptr = %d\n", *ptr);

        // print value of ptr
        printf("Value of ptr = %p\n\n", ptr);

        // Increment pointer ptr by 1
        ptr++;
    }

    // declare and inizialize dynamic array
    int* dynamic_array = malloc(3*sizeof(int));

    // populate the array and print values
     for (int i = 0; i < 3; i++) {
        dynamic_array[i] = i;
        printf("Value of dynamic_array[%d] = %d\n", i,dynamic_array[i]);
     }

    // free the array
    free(dynamic_array);


    // generics pointer
    int a = 3;
    float b = 3.14;
    void* voidptr;

    voidptr = &a;
    printf("int value: %d\n", *(int*)voidptr); 

    voidptr = &b;
    printf("float value: %f\n", *(float*)voidptr);
}