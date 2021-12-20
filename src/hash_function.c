#include <stdio.h>
#include <stdlib.h>

int power(int base, int exp)
{

    if (exp == 0)
    {
        return 1;
    }

    int power = base;
    for (int i = 0; i < exp - 1; i++)
    {
        power = power * base;
    }

    return power;
}

int hash(int n, int global_depth)
{
    int binary[32];
    for (int i = 0; i < 32; i++)
    {
        binary[i] = 0;
    }

    int max_size = 0;


    int i = 0;
    int result = 0;

    while (n > 0)
    {
        binary[i] = n % 2;
        n = n / 2;
        i++;
        max_size++;
    }



    for (int j = 0 ; j < global_depth ; j++)
    {
        result +=  binary[j]*power(2,global_depth-j-1);
    
    }
    
    return result;

}
