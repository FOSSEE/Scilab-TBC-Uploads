//Transport Processes and Seperation Process Principles
//Chapter 10
//Example 10.3-3
//Stage and continuous Gas-liquid Seperation Processes
//given data
V1=29.73;//kg mol/h
ya1=0.00101;
L0=90;
xa0=0;
m=2.53;
A1=L0/(m*V1);//cross sectional area
Vn1=30;
yan1=0.01;
Ln=90.27;
xan=0.003;
An=Ln/(m*Vn1);
A=sqrt(A1*An);
Np=log(((yan1-m*xa0)/(ya1-m*xa0))*(1-1/A)+(1/A))/log(A);//no. of plates
mprintf("the no. of plates= %f",Np)
//kremsor equations
