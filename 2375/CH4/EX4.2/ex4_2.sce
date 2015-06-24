// Exa 4.2
clc;
clear;
close;
format('v',6)
// Given data
V_CC = 15;// in V
R_L = 10;// in k ohm
Rf = 200;// in k ohm
R_S = 5;// in k ohm
Rf2 = Rf;// in k ohm
h_fe = 50;
V_S= 10*10^-3;// in V
h_oe = 1/40;// in k ohm
R_L = (R_L*Rf2)/(R_L+Rf2);// in k ohm
Ai = -h_fe/(1+h_oe*R_L);
disp(Ai,"The internal current gain is");
//Zi = Vbe/Ib = h_ie +Ai*h_re*R_L;
h_ie = 1.1;// in k ohm
h_re = 2.5*10^-4;
Zi = h_ie +Ai*h_re*R_L;// in k ohm
disp(Zi,"The internal input impedance in k ohm is");
//A_V = Vce/Vbe = (Ai*R_L)/Zi;
A_V = (Ai*R_L)/Zi;
disp(A_V,"The internal voltage gain is");
Rf1= Rf/(1-A_V)
// Rf1 = Rf/(1-A_V);// in k ohm
//Ri = Vi/Ii = Vbe/Ii = (Rf1*Zi)/(Rf1+Zi);
Ri = (Rf1*Zi)/(Rf1+Zi);// in k ohm
disp(Ri,"The overall input impedance in k ohm is");
//A_VS = Vo/V_S or 
A_VS = A_V*(Ri/(R_S+Ri));
disp(A_VS,"The overall voltage gain is");
//A_IS = I_L/Ii or
A_IS = (Rf2/(Rf2+R_L))*Ai*(Rf1/(Rf1+Zi));
disp(A_IS,"The overall current gain is");
Rdesh_S= Rf1*R_S/(Rf1+R_S);// in k ohm
Yo= h_oe-h_re*h_fe/(h_ie+Rdesh_S);// in mho
Zo= 1/Yo;// in ohm
disp(Zo,"The output impedance in ohm is : ")
Zdesh_o= Rf2*Zo/(Rf2+Zo);// in ohm
disp(Zdesh_o,"The overall output impedance in ohm is : ");
Vo= V_S*abs(A_VS);// in V
Vo= Vo*10^3;// in mV
disp(Vo,"The magnitude of output voltage in mV is : ")


