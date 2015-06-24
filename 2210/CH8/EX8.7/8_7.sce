//Chapter 8, Problem 7
clc
fl=511e6                  //lowest frequency at the divider
res=1e6                   //resolution
fh=887e6                  //highest frequency at the divider

//calculation of division factor
N=fl/res
N2=fh/res

printf("Lowest value of division factor, N = %d \n\n",N)
printf("Highest value of division factor, N = %d ",N2)
