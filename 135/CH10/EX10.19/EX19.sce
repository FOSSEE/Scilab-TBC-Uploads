// Example 10.19: Approximate value of fH
clc, clear
btaf=150;
VA=120; // in volts
fT=400e6; // in hertz
C_mu=0.5e-12; // in farads
ICQ=100e-6; // in amperes
RS=50e3; // in ohms
RC=250e3; // in ohms
VT=25e-3; // Voltage equivalent to temperatue at room temperature in volts
gm=ICQ/VT; // in mho
r_pi=btaf/gm;  // in ohms
ro=VA/ICQ; // in ohms
C_pi=btaf/(2*%pi*fT*r_pi)-C_mu; // in farads
function[c]=parallel(a,b)
    c=a*b/(a+b);
endfunction
// From AC model in Fig. 10.73
Ri=r_pi+(1+btaf)*parallel(ro,r_pi); // in ohms
R_mu1=parallel(RS,Ri); // in ohms
// From Fig. 10.75(b)
R=(50+36.36)/(1+145); // in ohms
R_pi1=parallel(r_pi,R); // in ohms
R_pi2=parallel(r_pi,parallel((RS+r_pi)/(1+btaf),ro)); // in ohms
RL=parallel(ro,RC); // in ohms
R_mu2=R_pi2*(1+gm*RL)+RL; // in ohms
a1=R_mu1*C_mu+R_pi1*C_pi+R_pi2*C_pi+R_mu2*C_mu; // in seconds
fH=1/(2*%pi*a1); // in hertz
fH=fH*1e-3; // in kilo-hertz
disp(fH,"Approximate value of fH (kHz) =");