
#include "hello.h"
#include "add.h"

#include <stdio.h>

int main() 
{
    print("hello, static library!!!!");
    printf("4 + 5 = %d.\n", add(4, 5));
    return 0;
}
