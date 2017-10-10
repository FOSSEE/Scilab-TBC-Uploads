//Chapter 08: Advanced Counting Techniques

clc;
clear;

//For (-2 3)
u=-2                   //From definition 2
k=3                   //From definition 2
bin_coeff1=(u*(u-1)*(u-k+1))/factorial(k)

//For (1/2 3)
u=1/2                   //From definition 2
k=3                   //From definition 2
bin_coeff2=(u*(u-1)*(u-k+1))/factorial(k)

mprintf("The extended binomial coefficient for (-2 3) is %d",bin_coeff1)
mprintf("\nThe extended binomial coefficient for (1/2 3) is %f",bin_coeff2)
