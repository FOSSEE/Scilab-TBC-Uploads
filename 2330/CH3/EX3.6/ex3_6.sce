// Exa 3.6
format('v',5)
clc;
clear;
close;
// given data
Rs= 820;// in Ω
Rz= 17;// in Ω
R_T= Rs+Rz;// in Ω
Vz= 10;// in V
Vin_min= 20;// in V
Vin_max= 40;// in V
// The minimum zener current 
Iz_min= (Vin_min-Vz)/R_T;// in A
// The maximum zener current 
Iz_max= (Vin_max-Vz)/R_T;// in A
// The minimum output voltage 
Vout_min= Vz+Iz_min*Rz;// in V
// The maximum output voltage 
Vout_max= Vz+Iz_max*Rz;// in V
Iz_min= Iz_min*10^3;// in mA
Iz_max= Iz_max*10^3;// in mA
disp(Iz_min,"The minimum zener current in mA is : ")
disp(Iz_max,"The maximum zener current in mA is : ")
disp(Vout_min,"The minimum output voltage in V is : ")
disp(Vout_max,"The maximum output voltage in V is : ")
