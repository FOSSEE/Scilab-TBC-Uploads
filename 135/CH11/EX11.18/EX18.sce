// Example 11.18: T, AoL, AF
clc, clear
function[c]=parallel(a,b)
    c=a*b/(a+b);
endfunction
ICQ1=0.25e-3; // in amperes
ICQ2=-0.5e-3; // in amperes
bta1=200;
VA1=125; // in volts
bta2=150;
VT=25e-3; // Voltage equivalent to temperatue at room temperature in volts
gm1=ICQ1/VT; // in mho
gm2=abs(ICQ2)/VT; // in mho
r_pi1=bta1/gm1; // in ohms
r_pi2=bta2/gm2; // in ohms
ro1=VA1/ICQ1; // in ohms
// From ac equivalent circuit in Fig. 11.56
RC1=20e3; // in ohms
RS=1e3; // in ohms
bta=-0.82/(20+0.82); // Feedback factor
RL1=parallel(RC1,ro1); // in ohms
Ib2_IC1=RL1/(RL1+r_pi2+(1+bta2)*parallel(20e3,0.82e3)); // Ib2/IC1
Ib1_IS=parallel(RS,20.82e3)/(r_pi1+parallel(RS,20.82e3)); // Ib1/IS
AoL=bta2*Ib2_IC1*bta1*Ib1_IS; // Current gain without feedback
T=-bta*AoL;
AF=AoL/(1+T);
disp(T,"T =");
disp(AoL,"AoL =");
disp(AF,"AF =");