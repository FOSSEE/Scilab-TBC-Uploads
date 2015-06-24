//Exa4.16
clc;
clear;
close;
//given data
Vs=16;//in volts
RL=1.2;//in Kohm
Rs=1;//in Kohm
//If zener open circuited
VL=Vs*RL/(Rs+RL);//in Volts
disp(VL,"When zener open circuited Voltage across load in volts : ");
disp("Since voltage across load VL is less than breakdown voltage of zener diode i.e. VL < Vz. The zener diode will not conduct and VL = 8.73 Volt");
Iz=0;//in mA
disp(Iz,"Zener current in mA : ");
Pz=VL*Iz;//in watts
disp(Pz,"Power in watts : ");