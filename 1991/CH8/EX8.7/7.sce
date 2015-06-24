clc
clear
//input
a=20*10^-4 //area
n=900 //number of turns
b=5*10^-2 //flux density
i=4.5 //current
//calculation
e=b*a*n*2*%pi*30//emf induced
p=e*i//power output
//output
printf("the emf induced is %3.3f V",e)
printf("\n the power output is %3.3f W",p)
