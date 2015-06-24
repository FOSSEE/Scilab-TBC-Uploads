// Exa 3.5
format('v',5)
clc;
clear;
close;
// given data
Vin_min= 20;// in V
Vin_max= 40;// in V
Vz= 10;// in V
Rs= 820;// in Ω
// The minimum zener current,
Iz_min= (Vin_min-Vz)/Rs;// in A
// The maximum zener current, 
Iz_max= (Vin_max-Vz)/Rs;// in A
// The output voltage,
Vout= Vz;// in V
Iz_min= Iz_min*10^3;// in mA
Iz_max= Iz_max*10^3;// in mA
disp(Iz_min,"The minimum zener current in mA is : ");
disp(Iz_max,"The maximum zener current in mA is : ");
disp(Vout,"The output voltage in V is : ")
