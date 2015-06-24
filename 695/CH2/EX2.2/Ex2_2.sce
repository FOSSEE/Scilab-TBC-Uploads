//Caption:Find the load shared by two DC generators
//Exa:2.2
clc;
clear;
close;
E_g1=120;//in volts
E_g2=115;//in volts
R_a1=0.05;//armature winding resistance of first generator (in ohms)
R_a2=0.04;//armature winding resistance of second generator (in ohms)
R_f1=20;//feild winding resistance of first generator (in ohms)
R_f2=25;//feild winding resistance of seccond generator (in ohms)
P=25000;//in watts
V_t=(5275+sqrt((5275^2)-(4*45.09*25000)))/(2*45.09);//terminal voltage in volts
I_1=(E_g1-(V_t*(1+(R_a1/R_f1))))/R_a1;//in amperes
I_2=(E_g2-(V_t*(1+(R_a2/R_f2))))/R_a2;//in amperes
P_1=V_t*I_1/1000;//in kilo watts
P_2=V_t*I_2/1000;//in kilo watts
disp(P_1,'Power shared by generator-1(in Kilo Watts)= ');
disp(P_2,'Power shared by generator-2(in Kilo Watts)= ');