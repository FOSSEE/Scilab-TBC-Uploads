//chapter 1 Ex 32

clc;
clear;
close;
//given series is in AP in which first element a1=6, second element a2=15, last element an=105
a1=6; a2=15; d=a2-a1; an=105;

//formula for last element is a1+(n-1)*d=an; where n is number of elements in series
n=(an-a1)/d+1;

Sum=n/2*(a1+an);
printf("The required sum is %d",Sum);
