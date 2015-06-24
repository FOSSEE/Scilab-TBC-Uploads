// Example 7.11
format('v',5)
clc;
clear;
close;
// given data
Vin= 20;// in V
Vz= 10;// in V
Rs= 680;// in Ω
V_BE= 0.7;// in V
R_L= 15;// in Ω
bita= 80;
Is= (Vin-Vz)/Rs;// in A
Vout= Vz-V_BE;// in V
I_E= Vout/R_L;// in A
I_L= I_E;// in A
I_B= I_E/bita;// in A
// The current through the zener diode 
Iz= Is-I_B;// in A
V_CE= Vin-Vout;// in V
// The transistor power dissipation 
Po= I_L*(Vin-Vout);// in W
Iz= Iz*10^3;// in mA
disp(Iz,"The current through the zener diode in mA is : ");
disp(Po,"The transistor power dissipation in watt is : ")
