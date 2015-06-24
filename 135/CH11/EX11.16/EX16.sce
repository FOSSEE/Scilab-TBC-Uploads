// Example 11.16: (a) AF, T
//                (b) R1F, RoF
clc, clear
btao=150;
ICQ=1.5e-3; // in amperes
VT=25e-3; // Voltage equivalent to temperatue at room temperature in volts
// From circuit without feedback but with loading in Fig. 11.50
RS=2e3; // in ohms
RE1=0.1e3; // in ohms
RF=6.2e3; // in ohms
RC1=4.3e3; // in ohms
RC2=1.2e3; // in ohms
RL=4.7e3; // in ohms

function[c]=parallel(a,b)
    c=a*b/(a+b);
endfunction

disp("Part (a)");
gm=ICQ/VT; // Transconductance in mho
r_pi=btao/gm; // Incremental resistance of emitter-base diode in ohms
AV1=-btao*RC1/(RS+r_pi+(1+btao)*parallel(RE1,RF));
AV2=-btao*parallel(RC2,parallel(RF+RE1,RL))/(RC1+r_pi);
AoL=AV1*AV2;
bta=-RE1/(RE1+RF);
T=-bta*AoL;
AF=AoL/(1+T);
disp(AF,"AF =");
disp(T,"T =");

disp("Part (b)");
RID=r_pi+(1+btao)*parallel(RE1,RF); // in ohms
RID_dash=RS+RID; // in ohms
RIF_dash=RID_dash*(1+T); // in ohms
RIF=RIF_dash-RS; // in ohms
RoD=parallel(RC2,RF+RE1); // in ohms
RoD_dash=parallel(RoD,RL); // in ohms
RoF_dash=RoD_dash/(1+T); // in ohms
RoF=RL*RoF_dash/(RL-RoF_dash); // in ohms
RIF=RIF*1e-3; // in kilo-ohms
disp(RIF,"RIF (kΩ​) =");
disp(RoF,"RoF (Ω​) =");