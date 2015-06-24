// Exa 3.14
clc;
clear;
close;
format('v',6)
// Given data
R_L = 200;// in ohm
Vin = 20;// in V
V_Z = 10;// in V
P_Zmaz = 400;// in mW
R_S = 220;// in ohm
//The value of V_L with 200 ohm 
V_L =(R_L/(R_S+R_L))*Vin;// in V
disp(V_L,"The value of V_L with 200 ohm in V is");
// The value of I_Z with 200 ohm 
I_Z = 0;// in A
disp(I_Z,"The value of I_Z with 200 ohm in A is");
// The value of I_L with 200 ohm 
I_L = Vin/(R_S+R_L)*10^3;// in mA
disp(I_L,"The value of I_L with 200 ohm in mA is");
//The value of I_R with 200 ohm 
I_R = I_L;// in mA
disp(I_R,"The value of I_R with 200 ohm in mA is");
R_L = 50;// in ohm
V_L = (R_L/(R_S+R_L))*Vin;// in V
//The value of I_L with 50 ohm 
I_L = Vin/(R_S+R_L)*10^3;// in mA
disp(I_L,"The value of I_L with 50 ohm in mA is");
// The value of I_R with 50 ohm 
I_R = I_L;// in mA
disp(I_R,"The value of I_R with 50 ohm in mA is");
// The value of I_Z with 50 ohm 
I_Z = 0;// in A
disp(I_Z,"The value of I_Z with 50 ohm in A is");
disp(V_L,"The value of V_L with 50 ohm in V is");
