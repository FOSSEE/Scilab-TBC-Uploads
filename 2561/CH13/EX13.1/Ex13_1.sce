//Ex13_1
clc
VT=26*10^(-3)
disp("VT= "+string(VT)+" volts") // Thermal voltage 
R1=5*10^(3)
disp("R1= "+string(R1)+ " ohm")  // resistance
Iso=1*10^(-10)
disp(" Iso = "+string(Iso)+" ampere") // Scale factor (as current)directly proportional to cross-section area of EBJ 

disp("part(i)")
vs=1*10^(-3)
disp("vs= "+string(vs)+" volts") // Input voltage1
vo=-VT*[log(vs/(Iso*R1))]
disp("vo=-VT*[log(vs/(Iso*R1))]= "+string(vo)+" volts") // Output voltage of Log OP-AMP for input1 i.e vs = 1 mV

disp("part(ii)")
vs=10*10^(-3)
disp("vs= "+string(vs)+" volts") // Input voltage2
vo=-VT*[log(vs/(Iso*R1))]
disp("vo=-VT*[log(vs/(Iso*R1))]= "+string(vo)+" volts") // Output voltage of Log OP-AMP for input1 i.e vs = 10 mV

disp("part(iii)")
vs=100*10^(-3)
disp("vs= "+string(vs)+" volts") // Input voltage3
vo=-VT*[log(vs/(Iso*R1))]
disp("vo=-VT*[log(vs/(Iso*R1))]= "+string(vo)+" volts") // Output voltage of Log OP-AMP for input1 i.e vs = 100 mV

disp("part(iv)")
vs=1
disp("vs= "+string(vs)+" volts") // Input voltage4
vo=-VT*[log(vs/(Iso*R1))]
disp("vo=-VT*[log(vs/(Iso*R1))]= "+string(vo)+" volts") // Output voltage of Log OP-AMP for input1 i.e vs = 1V
