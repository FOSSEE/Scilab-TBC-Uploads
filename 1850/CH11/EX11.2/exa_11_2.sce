// Exa 11.2
clc;
clear;
close;
//given data
I_L= 0.5;// in amp
R_L=25;// in ohm
V_R=12;// in volt (since using 7812 voltage regulator)
V_L= I_L*R_L;
R=V_R/I_L;// in ohm
disp(R,"Resistance required in ohm");
V_out= V_R+V_L;// in volt
disp(V_out,"Output voltage in volt");
V_in= V_out+2;// in volt
disp(V_in,"Input voltage in volt");
