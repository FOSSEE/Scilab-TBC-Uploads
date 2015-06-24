//Example 2_9_u1
clc();
clear;
//To calculate resolving power in second order
//We have e*sin(theta)=k*lamda
//We have e*0.2=k*lamda       ->1
//And e*0.3=(k+1)*lamda        ->2
//Subtracting one and two 3*0.1=lamda
lamda=5000         //units in armstrongs
lamda=lamda*10^-8   //units in cm
e=lamda/0.1     //units in cm
width=2.5       //units in cm
N=width/e
respower=2*N
printf("Resolving power is %.f",respower)
