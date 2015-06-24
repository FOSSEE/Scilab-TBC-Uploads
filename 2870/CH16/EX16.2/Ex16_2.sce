clc;clear;
//Example 16.2

//given data
vH2=1;
vH=2;
P=10;

//calculations
// H2 = 0.9H2 + 0.2H
NH=0.2;
NH2=0.9;
Nt=NH+NH2;
//from Eq. 16-15
Kp=((NH^vH)/(NH2^vH2))*(P/Nt)^(vH-vH2);
//at this value of Kp from Table A-28
T=3535;
disp(T,'temperature in K is')
