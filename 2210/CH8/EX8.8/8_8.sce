//Chapter 8, Problem 8
clc
fl=18.7e6                   //lowest frequency at the divider
fo=50e3                     //divider output
fl2=38.7e6                  //highest frequency at the divider

//calculation of division factor
N=fl/fo
N2=fl2/fo

printf("Lowest value of division factor, N = %d \n\n",N)
printf("Highest value of division factor, N = %d ",N2)
