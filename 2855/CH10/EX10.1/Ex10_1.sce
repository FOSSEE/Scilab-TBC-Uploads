//Chapter 10
//page no 354
//given
clc;
clear all;
Vpi=1;         //Assumed 1 because we can not use a variable on RHS 
//Vpi is Violtage swing
A=0.25;         //chirping
//V1=(AV1p+Vp)/2
V1=(A*Vpi+Vpi)/2;
printf("\n V1= %0.3f Vpi",V1) 
V2=V1-Vpi;
printf("\n V2= %0.3f Vpi",V2) 
