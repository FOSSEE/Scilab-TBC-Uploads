// Exa 2.11
clc;
clear; 
close;
// Given data 
V_DD= 15;// in V
KnWbyL= 0.25;// in mA/V^2
KnWbyL=KnWbyL*10^-3;// in A/V^2
Vt= 1.5;// in V
V_A= 50;// in V
R_D= 10;// in kΩ
R_D= R_D*10^3;// in Ω
R_L= 10;// in kΩ
R_L= R_L*10^3;// in Ω
R_G= 10;// in MΩ
R_G= R_G*10^6;// in Ω
// I_D= 1/2*KnWbyL*(V_D-Vt)^2 , (V_GS= V_D, as dc gate current is zero)   (i)
// V_D= V_DD- I_D*R_D           (ii)
I_D= 1.06;// in mA
I_D = I_D*10^-3;// in A
V_D= V_DD- I_D*R_D;// in V
V_GS=V_D;// in V
// The coordinates of operating point 
V_GSQ= V_D;// in V
I_DQ= I_D*10^3;// in mA
disp("The coordinates of operating points are  V_GSQ = "+string(V_GSQ)+" V and I_DQ= "+string(I_DQ)+" mA")
gm= KnWbyL*(V_GS-Vt);// in A/V
r_o= V_A/I_D;//in Ω
// The gain is : Av= vo/vi = -gm*(R_D||R_L||r_o)
Av= -gm*[R_D*R_L*r_o/(R_D*R_L+R_D*r_o+R_L*r_o)];// in V/V
// i_i= (vi-vo)/R_G
// i_i= vi/R_G*(1-vo/vi) and Rin= vi/i_i = R_G/(1-Av)
Rin= R_G/(1-Av);// in Ω
disp(Rin*10^-6,"The input resistance in MΩ is : ")
disp("The largest allowable input signal vi is determined by the need to keep the MOSFET in saturation at all times")
disp("                                 V_DS >= V_GS- vt")
disp("By enforcing this condition with equality at the point V_GS is maximum and V_DS is correspondingly minimum")
disp("                                 V_DSmin= V_GSmax -Vt")
disp("                                 V_DS-|Av| vi = V_GS + vi -Vt")
disp("                                 4.4 - 3.3 vi = 4.4 + vi -1.5")
disp("which results in vi= 0.34V")
