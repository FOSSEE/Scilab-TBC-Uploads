clear;
clc;

na=3;
nb=2;
nc=1;
Fa=3e-3;
Fb=2e-3;
Fc=4e-3;
t=20;


F=(Fa*na)+(Fb*nb)+(Fc*nc);
R=exp(-1*F*t);
MTTF=1/F;
mprintf("\nReliability = %.5f \nMTTF = %.3f HOURS",R,fix(MTTF*1000)/1000);

