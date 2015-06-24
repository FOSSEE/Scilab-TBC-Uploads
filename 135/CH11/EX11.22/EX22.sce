// Example 11.22: AF, RoF
clc, clear
gm=2e-3; // in mho
rd=20e3; // in ohms
RD=12e3; // in ohms
RG=500e3; // in ohms
Rs=50; // in ohms
RF=5e3; // in ohms
function[c]=parallel(a,b)
    c=a*b/(a+b);
endfunction
Ro=parallel(RD,rd); // in ohms
AV1=-gm*parallel(RD,parallel(rd,RG));
AV2=AV1;
AV3=-gm*parallel(RD,rd);
AV=AV1*AV2*AV3;
RG_dash=parallel(RG,RF); // in ohms
Vi_Vs=RG_dash/(RG_dash+Rs); // Vi/Vs
AoL=AV*Vi_Vs*RF/(RF+Ro); // Vo/Vs (Open loop)
bta=1/RF; // Feedback factor
RM=AoL*Rs; // in ohms
T=-bta*RM; // Return ratio
AF=AoL/(1+T);
RoD=parallel(Ro,RF); // in ohms
RoF=RoD/(1+T); // in ohms
disp(AF,"AF =");
disp(RoF,"RoF (Ω) =");