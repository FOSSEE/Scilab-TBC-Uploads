// Exa 4.16
clc;
clear;
close;
// Given data 
I=1;// in mA
I=I*10^-3;// in A
i_C=1;// in mA
i_C=i_C*10^-3;// in A
V_CC= 5;// in V
V_CM= -2;// in V
V_BE= 0.7;// in V
R_C= 3;// in kΩ
R_C= R_C*10^3;// in Ω
Alpha=1;
Bita=100;
V_B= 1;// in V
i_C1= Alpha*I;// in A
i_C2=0; 
v_E= V_B-V_BE;// in V
disp(v_E,"Emitters voltage in volts is : ")
v_C1= V_CC-i_C1*R_C;// in V
v_C2= V_CC-i_C2*R_C;// in V
disp("Output voltage is "+string(v_C1)+" V and "+string(v_C2)+" V")
