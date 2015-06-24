//calculation of rate constant from time and pressure data

clear;
clc;

printf("\t Example 13.5\n");

t=[0,100,150,200,250,300];//time(data given), s
P=[284,220,193,170,150,132];//pressure(data given) in mmHg corresponding to time values
lnP=log(P);//lnP values corresponding to P

[slope]=reglin(t,lnP);//lnP=-k*t+lnPo, slope of the line between lnP and t gives -k value 
k=-slope;//rate constant, s-1

printf("\t the rate constant for the decomposition is : %4.2f*10^-3 s-1\n",k*1000);

//End
