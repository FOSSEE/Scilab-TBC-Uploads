//Example sec 11.9.2 b
//stability of linear continuous system
clear;clc;
xdel(winsid());

s=%s;
G=5/(s*(s+1)*(s+2))
G1=pfss(G)
//taking Z transform of G1
z=%z;
G2=5*((z/(2*(z+1)))-(z/(z+%e^(-1)))+(z/(2*(z+%e^(-2)))))
//upon simplification we get the following characteristic equation
B=z^3-(0.5*z^2)+2.49*z-0.496
//substituting "z=(1+r/1-r)" in B
//the resultant equation is B1
r=poly(0,'r')
B1=3.5*r^3-2.5*r^2+0.5*r+2.5
routh_t(B1)
disp("The system is unstable")
