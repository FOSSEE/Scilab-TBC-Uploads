// Example 10.13: (a) fH for cascode amplifier
//                (b) fH for common -emitter stage
clc, clear
RC1=1.5e3; // in ohms
RC2=RC1;
RS=300; // in ohms
r_pi=2e3; // in ohms
gm=0.05; // in mho
bta=100;
C_pi=19.5e-12; // in farads
C_mu=0.5e-12; // in farads

disp("Part (a)");
R_pi1=RS*r_pi/(RS+r_pi); // in ohma
Ri2=r_pi/(1+bta); // in ohms
RL1=RC1*Ri2/(RC1+Ri2); // in ohms
a11=R_pi1*C_pi+(R_pi1*(1+gm*RL1)+RL1)*C_mu; // in seconds
a12=C_pi/gm+C_mu*RC2; // in seconds
a1=a11+a12; // in seconds
fH=1/(2*%pi*a1); // in hertz
fH=fH*1e-6; // in Mega-hertz
disp(fH,"fH for cascode amplifier (MHz) =");

disp("Part (b)");
a1=R_pi1*C_pi+(R_pi1*(1+gm*RC1)+RC1)*C_mu; // in seconds
fH=1/(2*%pi*a1); // in hertz
fH=fH*1e-6; // in Mega-hertz
disp(fH,"fH for common-emitter stage (MHz) =");