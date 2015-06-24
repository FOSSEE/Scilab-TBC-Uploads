// Example 11.20: (a) AVF
//                (b) AIF
//                (c) RIF
//                (d) ROF
clc, clear
btao=50;
r_pi=1.1e3; // in ohms
function[c]=parallel(a,b)
    c=a*b/(a+b);
endfunction
// From equivalent circuit of amplifier without feedback in Fig. 11.60
RS=4.7e3; // in ohms
RF=15e3; // in ohms
RE2=0.1e3; // in ohms
RB1=parallel(91e3,10e3); // in ohms
RC1=4.7e3; // in ohms
RC2=4.7e3; // in ohms
RB2=RB1; // in ohms

disp("Part (b)");
RL1=parallel(RS,parallel(RF+RE2,RB1)); // in ohms
I1_IS=RL1/(RL1+r_pi); // I1/IS
IC1_IS=btao*I1_IS; // IC1/IS
Ri2=r_pi+(1+btao)*parallel(RE2,RF); // in ohms
I2_IS=-IC1_IS*parallel(RC1,RB2)/(parallel(RC1,RB2)+Ri2); // in ohms
IC2_IS=btao*I2_IS; // IC2/IS
AID=-IC2_IS/2; // Open loop
IF_IS=IC2_IS*RE2/(RE2+RF); // IF/IS
bta=IF_IS/AID; // Feedback factor
T=-bta*AID;
AIF=AID/(1+T);
disp(AIF,"AIF =");

disp("Part (a)");
AVF=AIF*RC2/RS;
disp(AVF,"AVF =");

disp("Part (c)");
RID=parallel(parallel(RS,RE2+RF),parallel(RB1,r_pi)); // in ohms
RIF=RID/(1+T); // in ohms
disp(RIF,"RIF (Ω) =");

disp("Part (d)");
ROF=RC2*1e-3; // in kilo-ohms
disp(ROF,"ROF (kΩ​) =");