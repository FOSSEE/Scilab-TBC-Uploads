// Example 5.4
format('v',6)
clc;
clear;
close;
// given data
V_BE= 0.7;// in V
V_LED= 2;//in V
V_CC= 20;// in V
R_B= 47;// in kΩ
R_B= R_B*10^3;//in Ω
R_C= 1*10^3;//in Ω
bita= 150;// unit less
// The LED current
I_LED= (V_CC-V_LED)/R_C;// in A
I_Csat= I_LED;// in A
I_Bsat= I_Csat/bita;// in A
// The input voltage,
V_IN= I_Bsat*R_B+V_BE;//in V
I_LED= I_LED*10^3;// in mA
disp(I_LED,"The LED current in mA is : ");
disp(V_IN,"The value of Vin in volts is : ")
