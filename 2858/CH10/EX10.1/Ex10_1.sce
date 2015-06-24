//example 10.1
clc; funcprot(0);
Gamma=18;
H=7;
sigmaa=0.3*Gamma*H;
disp(sigmaa,"maximum pressure intensity in kN/m^2");
//partb
A=54.02;
B1=1/2*1.75*37.8+37.8*1.75-A;
B2=45.2;
C=54.02;
s=3; //spacing
Pa=C*s;
disp(Pa,"strut loads in kN");
Pb=(B1+B2)*s;
disp(Pb,"strut loads in kN")
Pc=C*s;
disp(Pc,"strut loads in kN");
//partc
Me=45.2*1.196-37.8*1.196*1.196/2;//Me=Mmax
Sall=170e3;//sigmaall
S=Me/Sall;
disp(S,"section modulus in m^3/m");
//partd
Mmax=(B1+B2)*s^2/8;
S=Mmax/Sall;
disp(S,"section modulus in m^3/m");

