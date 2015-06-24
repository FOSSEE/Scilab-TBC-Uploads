//ex9.2
V_in=176*10^-3;
R_in=2.9*10^3;    //total input resistance from previous question
A_p=42429;    //power gain from previous question
V_CC=15;
I_CC=0.6;    //emitter current
P_in=V_in^2/R_in;
P_out=P_in*A_p;
P_DC=I_CC*V_CC;
eff=P_out/P_DC;
disp(eff,'efficiency')