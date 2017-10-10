//Example number 3.13, Page number 51

clc;clear;
close;

//Variable declaration
T1=773;    //temperature(K)
T2=1273;   //temperature(K)
n=1*10**-10;    //fraction of vacancy sites
//Calculation
logx=T1*log(n)/T2
x=%e**(logx);           //fraction of vacancy sites
//Result
printf("fraction of vacancy sites is %.3e",x)
//answer in the book varies due to rounding off errors
