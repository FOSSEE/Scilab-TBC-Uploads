// Exa 8.6
clc;
clear;
close;
// Given data
R_E1= 5.6;// in kohm
C1= 0.2;// in miu F
V_B1= 6.3;// in volt
V_BE= 0.7;// in volt
TL= 2.5;// trigger level for the Schmitt trigger (UTP,LTP) in volt
del_V1= 2*TL;// in volt
I_C1= (V_B1-V_BE)/R_E1;// in mA
disp(I_C1,"Charging current in mA");
toh= del_V1*C1/I_C1;// in ms
disp(toh,"Time period in ms")
