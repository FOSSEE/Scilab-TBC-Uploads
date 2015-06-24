clc();
clear;
// To calculate the critical temperature
p1=1;     //1st pressure in mm
p2=6;     //2nd pressure in mm
Tc1=5;    //1st critical temp in K
Tc2=Tc1*(p2/p1);
printf("the critical temperature is %f K",Tc2);
