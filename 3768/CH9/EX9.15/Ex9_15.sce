//Example number 9.15, Page number 209

clc;clear;
close;

//Variable declaration
I=3*10**-3;    //current(A)
RH=3.66*10**-4;    //hall coefficient(m**3/C)
e=1.6*10**-19;     //charge(c)
d=2*10**-2;
z=1*10**-3;
B=1;        //magnetic field(wb/m**2)
//Calculation
w=d*z;     //width(m**2)
A=w;     //area(m**2)
EH=RH*I*B/A;    
VH=EH*d*10**3;     //hall voltage(mV)
n=1/(RH*e);     //charge carrier concentration(per m**3)
//Result
printf("hall voltage is %.1f mH",VH)
printf("\n charge carrier concentration is %.2e per m^3",n)
