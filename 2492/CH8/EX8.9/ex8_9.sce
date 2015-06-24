// Exa 8.9
format('v',6)
clc;
clear;
close;
// Given data
R_C= 1;// in k ohm
V_CC= 5;// in V
V_CEsat= 0;// in V
V_BE= 0.7;// in V
bita_min= 50;
bita_max= 100;
// For the transistor to go to saturation,
I_C= (V_CC-V_CEsat)/R_C;// in mA
bita= bita_min;// for driving the transistor into saturation
I_Bmin= I_C/bita;//minimum base current in mA
// So, (V_CC-V_BE)/R_B >= I_B or
R_B= (V_CC-V_BE)/I_Bmin;// in k ohm
disp(R_B,"The maximum permissible value of R_B in k ohm is : ")
// For actual calculation one may take V_CEsat= 0.3 V
V_CEsat= 0.3;// in V
I_C= (V_CC-V_CEsat)/R_C;// in mA
bita= bita_min;// for driving the transistor into saturation
I_Bmin= I_C/bita;//minimum base current in mA
// So, (V_CC-V_BE)/R_B >= I_B or
R_B= (V_CC-V_BE)/I_Bmin;// in k ohm
disp("For actual calculation at V_CE(sat) = 0.3 V, the maximum value ")
disp(R_B,"of R_B in k ohm is : ")
