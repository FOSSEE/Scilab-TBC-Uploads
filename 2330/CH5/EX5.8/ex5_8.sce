// Example 5.8
format('v',6)
clc;
clear;
close;
// given data
V_BE= 0.7;//in V
V_CC= 30;// in V
R_B= 3*10^6;// in Ω
bitamin= 100;// unit less
bitamax= 300;// unit less
I_B= (V_CC-V_BE)/R_B;// in A
// The minimum value of collector current 
I_Cmin= bitamin*I_B;// in A
// The maximum value of collector current 
I_Cmax= bitamax*I_B;// in A
I_Cmin= I_Cmin*10^3;// in mA
I_Cmax= I_Cmax*10^3;// in mA
disp(I_Cmin,"The minimum value of collector current in mA is : ");
disp(I_Cmax,"The maximum value of collector current in mA is : ");
