clc();
clear;
// To calculate the critical temperature
M1=199.5;    //isotopic mass
M2=203.4;
Tc1=4.185;      //1st critical temp in K
Tc2=Tc1*sqrt(M1/M2);
printf("the critical temperature is %f K",Tc2);
