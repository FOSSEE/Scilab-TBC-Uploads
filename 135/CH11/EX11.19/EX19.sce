// Example 11.19: (a) AIF
//                (b) R1F
//                (c) A1F'
//                (d) AVF
clc, clear
btao=50;
r_pi=2e3; // in ohms
// From equivalent circuit without feedback but taking loading effect in Fig. 11.58
RS=1e3; // in ohms
Rf=15e3; // in ohms
RE2=10e3; // in ohms
RC1=10e3; // in ohms
RC2=10e3; // in ohms

function[c]=parallel(a,b)
    c=a*b/(a+b);
endfunction

disp("Part (a)");
RS_dash=parallel(RS,Rf+RE2); // in ohms
gm=btao/r_pi; // in mho
RE2_dash=parallel(RE2,Rf); // in ohms
Rx=r_pi+(1+btao)*RE2_dash; // in ohms
I2_IS=-gm*parallel(RS_dash,r_pi)*RC1/(RC1+Rx); // I2/IS
AI=-btao*I2_IS; // Open loop
If_IS=(1+btao)*I2_IS*RE2/(RE2+Rf); // If/IS
bta=If_IS/AI; // Feedback factor
T=-bta*AI;
AIF=AI/(1+T);
disp(AIF,"AIF =");

disp("Part (b)");
RID=parallel(RS,parallel(Rf+RE2,r_pi));
R1F=RID/(1+T); // in ohms
disp(R1F,"R1F (Ω) =");

disp("Part (c)");
Ii_IS=RS/(RS+parallel(Rf+RE2,r_pi)); // Ii'/IS
AI_dash=AI*Ii_IS;
T=-bta*AI_dash;
A1F_dash=AI_dash/(1+T);
disp(A1F_dash,"A1F =");

disp("Part (d)");
AVF=AIF*RC2/RS;
disp(AVF,"AVF =");