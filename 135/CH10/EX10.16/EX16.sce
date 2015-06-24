// Example 10.16: AVo, fH
clc, clear
RC=1.5e3; // in ohms
Rs=0.6e3; // in ohms
// From Fig. 10.69
C_pi=19.5e-12; // in farads
r_pi=1e3; // in ohms
C_mu=0.5e-12; // in farads
gm=0.1; // in mho
bta=r_pi*gm;
AVo=-bta*RC/(Rs+r_pi);
R_pi=Rs*r_pi/(Rs+r_pi); // in ohms
R_mu=R_pi+(1+gm*R_pi)*RC; // in ohms
a1=R_pi*C_pi+R_mu*C_mu; // in seconds
a2=R_pi*C_pi*R_mu*C_mu; // in seconds
p2_pi=a1^2/a2; // p2/p1
disp("Since p2/pi >> 8, therefore dominant-pole approximation holds good.");
fH=1/(2*%pi*a1); // in hertz
fH=fH*1e-6; // in Mega-hertz
disp(AVo,"AVo =");
disp(fH,"fH (MHz) =");