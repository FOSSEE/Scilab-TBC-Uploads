// Exa 2.27
clc;
clear;
close;
format('v',6)
// Given data
Vi = 10;// in V
V1 = 6;// in V
R = 10;// in k ohm
R = R * 10^3;// in ohm
// The value of i_Rmax
i_Rmax = (Vi-V1)/R;// in A
i_Rmax = i_Rmax * 10^3;// in mA
Vi = -10;// in V
V1 = 8;// in V
// The value of i_R 
i_R =(Vi+V1)/R;// in A
i_R  =i_R * 10^3;// in mA
disp(i_Rmax,"The value of i_Rmax in mA is : ")
disp(i_R,"The value of i_R in mA is : ")
