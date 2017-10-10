//Chapter 10, Example 10.1, Page 280
clc
clear
// Thermal utilization factor
Summation = ((0.0055*103.4)+(0.720*687)+(99.2745*2.73))/100
sigma = 0.0034
f = 7.662/(7.662+(sigma*450))
printf("Total thermal macroscopic = %f N^U cm^1\n",Summation)
printf(" f = %f \n",f)
// Answer may vary due to round off error
