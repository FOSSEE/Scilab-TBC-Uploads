//Finding no of electrons
//Example 15.37(pg. 417)
clc
clear
I=2.5*(10^-3)//current in Amp
t=30*(10^-3)//time in sec
Q=I*t//charge passing through the person in Coulumbs
e=1.602*(10^-19)//charge of 1 electron in C
N=Q/e//no of electrons passing through the person 
printf('Thus the no of electrons passing through the person is %e electrons',N)
