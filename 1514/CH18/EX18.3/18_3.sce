//chapter 18
//example 18.3
//page 569
clear;
clc ;
//given
E=30;
Vs=10;//supply voltage
Is=500;//ip current
Ih=1.5;//mA
Vf=1;//forward voltage drop
R1max=1000*(E-Vs)/Is;
R1min=(E-Vf)/Ih;
printf("\nmaximum and minimum values of R1 are %d kohm ,%.1f kohm respectively.",R1max,R1min);