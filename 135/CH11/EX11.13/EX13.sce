// Example 11.13: (a) Amplifier type
//                (b) Input resistance, Output resistance, Transfer ratio
clc, clear
r_pi=1e3; // in ohms
gm=0.1; // in mho

disp("Part (a)");
disp("Q1 is a common collector and Q2 is common emitter stage. Hence the given circuit is cascade of cc and CE stages. As the Rin of a CC is high and the Ro of the CE is low, therefore, the given circuit approximates a voltage amplifier. If RL is chosen a low resistance, the amplifier can be considered a voltage-to-current converter.")

function[c]=parallel(a,b)
    c=a*b/(a+b);
endfunction

disp("Part (b)");
// From the Fig. 11.42
RE1=3e3; // in ohms
RC2=0.6e3; // in ohms
btao=gm*r_pi;
Ri2=r_pi; // in ohms
Ri1=r_pi+(1+btao)*parallel(RE1,Ri2); // Input resistance in ohms
Rout=RC2; // Output resistance (= ro of Q2)
AV1=(1+btao)*RE1/(r_pi+(1+btao)*RE1);
Ro1=parallel(RE1,r_pi/(1+btao)); // in ohms
AV2=-btao*RC2/(Ro1+r_pi);
AV=AV1*AV2;
Ri1=Ri1*1e-3; // in kilo-ohms
Rout=Rout*1e-3; // in kilo-ohms
disp(Ri1,"Input resistance (Ω​) =");
disp(Rout,"Output resistance =");
disp(AV,"Transfer ratio =");