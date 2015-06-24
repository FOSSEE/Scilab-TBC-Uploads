// Exa 5.11
clc;
clear;
close;
format('v',6)
// Given data
R_S = 800;// in ohm
R_L = 2;// in k ohm
R_L = R_L * 10^3;// in ohm
h_ie = 1.1;// in k ohm
h_ie = h_ie * 10^3;// in ohm
h_fe = 50;
h_oe = 25;// in µohm
h_oe = h_oe * 10^-6;// in ohm
h_re = 2.5*10^-4;

// Part (a) : Exact analysis
disp("Part (a) : Exact analysis")
// The current gain
Ai_exact = -h_fe/(1+(h_oe*R_L));
disp(Ai_exact,"The current gain is");
// The input resistance 
Ri = h_ie + (h_re*Ai_exact*R_L);// in ohm
Ri= Ri*10^-3;// in k ohm
disp(Ri,"The input resistance in k ohm is");
Ri= Ri*10^3;// in ohm
A_V = (Ai_exact*R_L)/Ri;
// The voltage gain,
A_VS = (A_V*Ri)/(Ri+R_S);
disp(A_VS,"The voltage gain is");
Gamma_o = h_oe - ( (h_re*h_fe)/(h_ie+R_S) );// in mho
// The output resistance 
Ro = 1/Gamma_o;// in ohm
Ro= Ro*10^-3;// k ohm
disp(Ro,"The output resistance in k ohm is");
Ro= Ro*10^3;// ohm
// The power gain,
Ap = Ai_exact*A_V;
disp(Ap,"The power gain is");
// The output terminal resistance 
Rot = (Ro*R_L)/(Ro+R_L);// in ohm
Rot= Rot*10^-3;// in k ohm
disp(Rot,"The output terminal resistance in k ohm is");
Rot= Rot*10^3;// in ohm

// Part (b) : Approximate analysis
disp("Part (b) : Approximate analysis")
h_re =0;
h_oe = 0;
Ai_app = -h_fe/(1+(h_oe*R_L));
disp(Ai_app,"The value of Ai is");
Ri = h_ie+(h_re*Ai_app*R_L);
disp(Ri,"The value of Ri in ohm is");
A_V= Ai_app*R_L/Ri;
A_VS = (-A_V*h_ie)/(R_S+h_ie);
disp(A_VS,"The value of A_VS is");
Gamma_o = 18.42// in µohms
Gamma_o = Gamma_o * 10^-6;// in mho
// // The output resistance 
Ro = 1/Gamma_o;// in ohm
Ro= Ro*10^-3;// k ohm
disp(Ro,"The output resistance in k ohm is");
Ro= Ro*10^3;// ohm
Ap = Ai_app*A_V;
disp(Ap,"The value of Ap is");
//The output terminal resistance, Rot = (Ro*R_L)/(Ro+R_L)= 20;// in k ohm
Rot= 20;// in k ohm
disp(Rot,"The output terminal resistance in k ohm is");
Rot= Rot*10^3;// in ohm
// Percentage error
Per_error= abs((Ai_exact-Ai_app)/Ai_exact*100);// in %
disp(Per_error,"The percentage error in % is");



