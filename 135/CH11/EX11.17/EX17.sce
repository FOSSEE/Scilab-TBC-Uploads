// Example 11.17: (a) T, AoL, AF
//                (b) RoF
clc, clear
gm=1e-3; // in mho
rd=20e3; // in ohms

function[c]=parallel(a,b)
    c=a*b/(a+b);
endfunction

disp("Part (a)");
// From the ac equivalent circuit in Fig. 11.52
RF=10e3; // in ohms
RD1=10e3; // in ohms
RL=10e3; // in ohms
ro=20e3; // in ohms
RS=parallel(0.47e3,RF); // in ohms
RL2=parallel(ro,parallel(10.47e3,RL)); // in ohms
mu=rd*gm; // Amplification factor
AV1=-mu*RD1/(RD1+rd+(1+mu)*RS);
AV2=-gm*RL2;
AoL=AV1*AV2;
bta=-0.47/(10+0.47); // Feedback factor
T=-bta*AoL;
AF=AoL/(1+T);
disp(T,"T =");
disp(AoL,"AoL =");
disp(AF,"AF =");

disp("Part (b)");
RoD=parallel(ro,10.47e3); // in ohms
TSC=0; // for RL=0, T=0
ToC=bta*AV1*gm*RoD;
// By Blackman's relation
RoF=RoD*(1+TSC)/(1+ToC); // in ohms
RoF=RoF*1e-3; // in kilo-ohms
disp(RoF,"RoF (kΩ) =");