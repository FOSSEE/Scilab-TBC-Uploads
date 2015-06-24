// Example 10.7: (a) Midband gain, Upper half-power frequency
//               (b) Zi
clc, clear
ICQ=1e-3; // in amperes
RS=300; // in ohms
RC=1.2e3; // in ohms
bta=125;
fT=300e6; // in hertz
C_mu=0.5e-12; // in farads
VT=25e-3; // Voltage equivalent to temperatue at room temperature in volts

disp("Part (a)");
gm=ICQ/VT; // in mho
r_pi=bta/gm; // in ohms
// To find C_pi
C_pi=gm/(2*%pi*fT)-C_mu; // in farads
AVo=-bta*RC/(RS+r_pi); // Midband gain
disp(AVo,"Midband gain =");
R_pi0=RS*r_pi/(RS+r_pi);
a1=R_pi0*C_pi+(R_pi0+RC*(1+gm*R_pi0))*C_mu; // in seconds
a2=R_pi0*RC*C_pi*C_mu; // in seconds
p1=1/a1; // in rad/sec
p2=a1/a2; // in rad/sec
disp(p2/p1,"p2/p1 =");
disp("Since p2/p1 >> 8, therefore dominant-pole approximation holds good.");
wH=p1*1e-6; // in M rad/sec
disp(wH,"Upper half-power frequency (M rad/sec) =");

disp("Part (b)");
CM=C_pi+C_mu*(1+gm*RC); // in farads
Zi=r_pi/(1+%i*wH*1e6*CM*r_pi); // in ohms
disp(Zi,"Zi (Ω) =");