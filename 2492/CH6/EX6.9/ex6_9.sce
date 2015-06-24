// Exa 6.9
format('v',6)
clc;
clear;
close;
// Given data
h_ie = 1.5 * 10^3;// in ohm
h_fe = 100;
// R = R1||R2 = 20;// in k ohm
R = 20 * 10^3;// in ohm
R_E = 560;// in ohm
R_S = 600;// in ohm
Avf = (h_fe*R_E)/(h_ie+(h_fe*R_E));
VoByVs = Avf;
disp(VoByVs,"The value of midband voltage gain (vo/vs) is :");
Ri = h_ie + ((1+h_fe)*R_E);// in ohm
Ri= Ri*10^-3;// in k ohm
disp(Ri,"The value of input impedance (Ri) in k ohm is : ")
Ri= Ri*10^3;// in ohm
Ro = (R_S+h_ie)/(1+h_fe);// in ohm
disp(Ro,"The value of output impedance (Ro) in ohm is : ")
R_desh_i = (R*Ri)/(R+Ri);// in ohm
R_desh_i=R_desh_i*10^-3;// in k ohm 
disp(R_desh_i,"The value of R''i in k ohm is");
// For load resistance of 10 k ohm
R_L = 10;// in k ohm
R_L = R_L * 10^3;// in ohm
R_desh_o = (Ro*R_L)/(Ro+R_L);// in ohm
disp(R_desh_o,"The value of R''o for load resistance of 10 k ohm  in ohm is");
// For load resistance of 220 ohm
R_L = 220;// in ohm
R_desh_o = (Ro*R_L)/(Ro+R_L);// in ohm
disp(R_desh_o,"The value of R''o for load resistance of 220 ohm  in ohm is");

// Note: There is a calculation mistake to evaluate the value of R_desh_i (R'i)
