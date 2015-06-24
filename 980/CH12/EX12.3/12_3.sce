clc;
clear;
format('v',11);
Z=75;
epsilone_r=2.56;
epsilone_0=8.85*10^-12;
m_0=4*%pi*10^-7;                //The permeability of air.
a=1*10^-3;
b=a*exp(Z*2*%pi*sqrt(epsilone_0*epsilone_r/m_0));
disp(b,"b(in meter)=");
C=(2*%pi*epsilone_0*epsilone_r)/log(b/a);
disp(C,"The capacitance(in F/m)=");
L=(m_0/(2*%pi))*log(b/a);
disp(L,"The inductance(in H/m)=");
