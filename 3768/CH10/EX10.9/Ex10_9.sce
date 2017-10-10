//Example number 10.9, Page number 227

clc;clear;
close;

//Variable declaration
Tc1=5;     //critical temperature(K)
P1=1;   //pressure(mm)
P2=6;   //pressure(mm)
//Calculation
Tc2=Tc1*P2/P1;      //critical temperature(K)
//Result
printf("critical temperature is %.f K",Tc2)
