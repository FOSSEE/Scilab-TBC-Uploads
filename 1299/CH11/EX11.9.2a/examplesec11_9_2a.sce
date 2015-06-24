//Example sec 11.9.2 a
//stability of linear continuous system
clear;clc;
xdel(winsid());

s=%s;
G=1/(s*(s+1)*(s+2))
G1=pfss(G)
//taking Z transform of G1
z=%z;
G2=(z/(2*(z+1)))-(z/(z+%e^(-1)))+(z/(2*(z+%e^(-2))))
//upon simplification we get the following characteristic equation
B=z^3-(1.3*z^2)+0.85*z-0.5
//substituting "z=(1+r/1-r)" in B
//the resultant equation is B1
r=poly(0,'r');
B1=3.65*r^3+1.95*r^2+2.35*r+0.05
routh_t(B1)
disp("The system is stable")
