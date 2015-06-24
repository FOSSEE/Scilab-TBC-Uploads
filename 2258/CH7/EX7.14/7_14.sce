clc();
clear;
// To calculate the temperature
EgeV=1;   //energy in eV
k=1.38*10^-23;
Eg=EgeV*1.602*10^-19;    //in J
//EF can be taken as (Ev+0.5)eV
//therefore (Ev+0.5)eV = (Ec+Ev)/2--------(1)
//let fermi level shift by 10% then (Ev+0.6)eV = ((Ec+Ev)/2)+((3*k*T/4)*log(4))-----(2)
//subtracting (1) from (2)
//0.1 eV = (3*k*T/4)*log(4)
E=0.1;    //energy in eV
E=E*1.602*10^-19;    //energy in J
T=(4*E)/(3*k*log(4));
printf("temperature is %f K",T);
