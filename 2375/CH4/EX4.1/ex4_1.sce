// Exa 4.1
clc;
clear;
close;
format('v',6)
// Given data
R1 = 100*10^3;// in ohm
R2 = 10*10^3;// in ohm
h_fe = 50;
h_oe = 1/40;// in ohm
R_L = 5*10^3;// in ohm
R_S= 5*10^3;// in ohm
h_ie = 1.1*10^3;// in ohm
h_re = 2.5*10^-4;
R_B = (R1*R2/(R1+R2));// in ohm
A_I = (-h_fe)/(1 + h_oe*R_L);
disp(A_I,"The internal current gain is");
//Internal input impedance, Zi = Vbe/Ib or 
Zi = (h_ie + h_re*A_I*R_L);// in ohm
Zi= Zi*10^-3;// in k ohm
disp(Zi,"The internal input impedance in k ohm is");
Zi= Zi*10^3;// in ohm
//Internal voltage gain, Av = Vce/Vbe or 
Av = (A_I*R_L)/Zi;
disp(Av,"The internal voltage gain is");
Ri = floor(R_B*Zi/(R_B+Zi));// in ohm
Ri= Ri*10^-3;// in k ohm
disp(Ri,"The overall input impedance in k ohm is");
Ri= Ri*10^3;// in ohm
// V_S= I_i*R_S+v_be or
VS_by_vbe= Ri/(Ri+R_S);
Avs= Av*VS_by_vbe;
disp(Avs,"The overall voltage gain is : ")
// R_B*(I_i-I_b)= Zi*I_b or
I_bBYI_i= R_B/(R_B+Zi);
A_IS= A_I*I_bBYI_i;
disp(A_IS,"The overall current gain is : ")
Rdesh_S= R_B*R_S/(R_B+R_S);// in ohm
Rdesh_S= 3220
I_bByVce= -h_re/(h_ie+Rdesh_S);
Yo= h_oe-h_fe*h_re/(h_ie+Rdesh_S)*10^3;
Zo= 1/Yo;
disp(Zo,"The Output impedance in ohm is : ")


