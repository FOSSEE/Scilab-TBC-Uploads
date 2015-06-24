clc();
clear;
// To calculate the critical field
Tc=3.7;        //critical temperature in kelvin
Hc_0=0.0306;    //critical field in T
T=2;
Hc_2k=Hc_0*(1-((T/Tc)^2));
printf("the critical feild at 2K is %f Tesla",Hc_2k);
