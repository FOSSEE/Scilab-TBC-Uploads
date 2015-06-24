// Example 10.23: Value of fH for the cascade
clc, clear
bta=100;
r_pi1=0.5e3; // in ohms
r_pi2=0.5e3; // in ohms
r_pi3=1e3; // in ohms
fT=200e6; // in hertz
C_mu=1e-12; // in farads
// From Fig. 10.85
RS=2e3; // in ohms
RE1=5e3; // in ohms
RC2=2e3; // in ohms
RC3=1e3; // in ohms
RE3=100; // in ohms

function[c]=parallel(a,b)
    c=a*b/(a+b);
endfunction

// From Fig. 10.86
Ro1=parallel(RE1,(RS+r_pi1)/(1+bta)); // in ohms
gm2=bta/r_pi2; // in mho
gm3=bta/r_pi3; // in mho
C_pi2=bta/(2*%pi*fT*r_pi2)-C_mu; // in farads
C_pi3=bta/(2*%pi*fT*r_pi3)-C_mu; // in farads

// From Fig. 10.87
C1=C_pi2; // in farads
C2=C_mu; // in farads
C3=C_pi3; // in farads
C4=C_mu; // in farads
R11_0=parallel(Ro1,r_pi1); // in ohms
RL1=parallel(RC2,r_pi3+(1+bta)*RE3); // in ohms
R22_0=R11_0+RL1*(1+gm2*R11_0); // in ohms

// From Fig. 10.88
R_dash=2.1e3/(1+10); // in ohms
R33_0=parallel(RC2,R_dash); // in ohms

// From Fig. 10.89
R44_0=(3+2*98/13.1)*1e3; // in ohms

a1=R11_0*C1+R22_0*C2+R33_0*C3+R44_0*C4; // in seconds
fH=1/(2*%pi*a1); // in hertz
fH=fH*1e-6; // in Mega-hertz
disp(fH,"Value of fH for the cascade (MHz) =");