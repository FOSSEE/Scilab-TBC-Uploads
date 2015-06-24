// Example 10.8
format('v',5)
clc;
clear;
close;
// given data
V_CC= 50;// in V
V_CEsat= 1;// in V
R_L= 5;// in Ω
bita_dc= 90;// unit less
I_Csat= (V_CC-V_CEsat)/R_L;// in A
// The minimum base current that produces saturation 
I_Bsat= I_Csat/bita_dc;// in A
I_Bsat= I_Bsat*10^3;// in mA
disp(I_Bsat,"The minimum base current that produces saturation in mA is : ")
