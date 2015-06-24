// Exa 3.10
format('v',6)
clc;
clear;
close;
// Given data
Vz1= 10;//voltage across zener diode, Z1 in V
Vz2= 5;// voltage across zener diode, Z2 in V
Iz1= 30*10^-3;// current through zener diode, Z1 in A
Iz2= 15*10^-3;// current through zener diode, Z1 in A
I_knee= 5*10^-3;//knee current of zener diode,Z1 in A
R_L=500;//load resistance in ohm
R= 1*10^3;// in ohm
V_B= 25;// in V
// Current through RL,
I_RL= Vz2/R_L;// in A
// Current through R2,
I_R2= Iz2+Vz2/R_L;// in A
// Voltage across resistance R2,
V_R2= Vz1-Vz2;// in V
R2= V_R2/I_R2;// in ohm
disp(R2,"The value of resistance R2 in ohm is : ")
// Current through R1,
I_R1= Iz1+Vz1/R+I_R2;//in A
// Voltage across R1,
V_R1= V_B-Vz1;// in V
R1= V_R1/I_R1;// in ohm
disp(R1,"The value of resistance R1 in ohm is : ")
// Current through R1,
I_R1= I_knee+Vz1/R+I_R2;// in mA
// Voltage across R1,
V_R1= I_R1*R1;// in volts
V_Bmin= Vz1+V_R1;// in V
disp(V_Bmin,"The lowest power supply voltage in volts is : ")
