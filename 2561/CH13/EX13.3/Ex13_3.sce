//Ex13_3
clc
VT=26*10^(-3)
disp("VT= "+string(VT)+" volts") // Thermal voltage 
RF=100*10^(3)
disp("RF= "+string(RF)+ " ohm")  // resistance
Iso=50*10^(-9)
disp(" Iso = "+string(Iso)+" ampere") // Scale factor (as current)directly proportional to cross-section area of EBJ 
vs=-0.162
disp("vs= "+string(vs)+" volts") // Input voltage
vo=Iso*RF*(exp(-vs/VT))
disp("vo=Iso*RF*(exp(-vs/VT))= "+string(vo)+" volts") // Output voltage of Antilog OP-AMP for input1 i.e vs = -0.162 V
