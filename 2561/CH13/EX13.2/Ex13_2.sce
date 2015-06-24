//Ex13_2
clc
VT=26*10^(-3)
disp("VT= "+string(VT)+" volts") // Thermal voltage 
R1=100*10^(3)
disp("R1= "+string(R1)+ " ohm")  // resistance
Iso=50*10^(-9)
disp(" Iso = "+string(Iso)+" ampere") // Scale factor (as current)directly proportional to cross-section area of EBJ 
vs=2.5
disp("vs= "+string(vs)+" volts") // Input voltage
vo=-VT*[log(vs/(Iso*R1))]
disp("vo=-VT*[log(vs/(Iso*R1))]= "+string(vo)+" volts") // Output voltage of Log OP-AMP for input1 i.e vs = 2.5 V
