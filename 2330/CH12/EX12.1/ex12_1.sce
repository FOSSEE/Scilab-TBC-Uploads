// Example 12.1
format('v',5)
clc;
clear;
close;
// given data
R1= 20;// in kΩ
R2= 10;// in kΩ
R_E= 10;// in kΩ
R_D= 8.2;// in kΩ
V_G= 10;// in V
V_BE= 0.7;// in V
V_GS= -2;// in V
V_DD= 30;// in V
V_B= R2*V_DD/(R1+R2);// in V
I_E= (V_B-V_BE)/R_E;// in mA
I_D= I_E;// in mA
// The dc voltage from the drain to ground 
V_D= V_DD-I_D*R_D;// in V
// The source voltage to ground 
Vs= V_G-V_GS;// in V
disp(V_D,"The dc voltage from the drain to ground in volts is : ");
disp(Vs,"The source voltage to ground in volts is : ")
