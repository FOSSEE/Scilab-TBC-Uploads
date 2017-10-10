//Example number 10.6, Page number 226

clc;clear;
close;

//Variable declaration
T=5;     //temperature(K)
Tc=8;   //critical temperature(K)
H0=5*10**4;   //critical magnetic field(A/m)
r=1.5*10**-3;    //radius(m)
//Calculation
Hc=H0*(1-(T/Tc)**2);    //critical field(A/m)
Ic=2*%pi*r*Hc;     //critical current(amp)
//Result
printf("critical field is %.4e A/m",Hc)
printf("\n critical current is %.3f A",Ic)
//answer in the book varies due to rounding off errors
