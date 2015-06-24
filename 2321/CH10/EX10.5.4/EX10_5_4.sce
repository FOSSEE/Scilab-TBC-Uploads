//Example No. 10.5.4
clc;
clear;
close;
format('v',6);
Do_dB=14;//dB(Directivity)
f=2.4;//GHz(Frequency)
c=3*10^8;//m/s(Speed of light)
lambda=c/(f*10^6);//m(Wavelength)
Do=10^(Do_dB/10);//unitless(Directivity)
C=lambda;//m////for optimum result(Circumference)
alfa=14;//degree;////for optimum result(Pitch angle)
S=C*tand(alfa);//m(Spacing)
N=Do/15/(C/lambda)^2/(S/lambda);//turns
N=round(N);//turns
Rin=140*C/lambda;//Ω(Input impedence)
disp(Rin,"Input impedence in Ω is : ");
HPBW=52/(C/lambda*sqrt(N*S/lambda));//degree
disp(HPBW,"HPBW in degree : ");
format('v',4);
FNBW=115/(C/lambda*sqrt(N*S/lambda));//degree
disp(FNBW,"FNBW in degree : ");
AR=(2*N+1)/2/N;//(Axial ratio)
disp(AR,"Axial ratio : ");
