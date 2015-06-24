//Example 2_4_u1
clc();
clear;
//To examine two spectral lines are clearly resolved in first order and second order
n=425
tno=2*n
lamda1=5890           //units in armstrongs
lamda2=5896           //units in armstrongs
dlamda=lamda2-lamda1
//For first order
n=lamda1/dlamda
printf("As total no of lines required for resolution in first order is %.f and total no of lines in grating is %d the lines will not be resolved in first order",n,tno)
//For second order
n=lamda1/(2*dlamda)
printf("\nAs total no of lines required for resolution in first order is %.f and total no of lines in grating is %d the lines will be resolved in second order",n,tno)
