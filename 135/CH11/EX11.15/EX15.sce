// Example 11.15: Small signal gain, Input resistance, Output resistance
clc, clear
btao=100;
r_pi=1e3; // in ohms
ICQ=2.5e-3; // in amperes
VT=25e-3; // in volts
gm=ICQ/VT; // Transconductance in mho
r_pi=btao/gm; // Incremental resistance of emitter-base diode in ohms
// From ac model without feedback in Fig. 11.47
RS=10e3; // in ohms
RF=47e3; // in ohms
RC=4.7e3; // in ohms
function[c]=parallel(a,b)
    c=a*b/(a+b);
endfunction
AoL=-gm*parallel(RF,RC)*parallel(RS,parallel(RF,r_pi)); // in ohms
bta=1/RF;
T=-bta*AoL;  // Return ratio
AF=AoL/(1+T); // in ohms
AVF=AF/RS; // Small signal gain
RID=parallel(RF,r_pi); // in ohms
RID_dash=parallel(RID,RS); // in ohms
RIF_dash_I=RID_dash/(1+T); // in ohms
RIF_I=RS*RIF_dash_I/(RS-RIF_dash_I); // in ohms
RIF_dash_V=RS+RIF_I; // in ohms
RoD_dash=parallel(RF,RC); // in ohms
RoF_dash=RoD_dash/(1+T); // in ohms
RoF=RoF_dash*RC/(RC-RoF_dash); // in ohms
disp(RoF);
RIF_dash_V=RIF_dash_V*1e-3; // in kilo-ohms
RoF=RoF*1e-3; // in kilo-ohms
disp(AVF,"Small signal gain =");
disp(RIF_dash_V,"Input resistance (kΩ​) =");
disp(RoF,"Output resistance (kΩ​) =");