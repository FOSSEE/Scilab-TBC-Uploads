// Calculating the number of stator and rotor turns and rotor voltage between slip rings at standstill
clc;
disp('Example 10.13, Page No. = 10.35')
// Given Data
// 3 phase induction motor
Nss = 54;// Number of stator slots
Nrs = 72;// Number of rotor slots
V = 400;// Applied voltage across the stator terminals
// Calculation of the number of stator and rotor turns and rotor voltage between slip rings at standstill
Ts = Nss*8/6;// Stator turns per phase.  Since 8 conductors per slot
Tr = Nrs*4/6;// Rotor turns per phase.  Since 4 conductors per slot
Es = 400/3^(1/2);// Stator voltage per phase
Er = Es*Tr/Ts;// Rotor voltage per phase at standstill
disp(Ts,'Stator turns per phase =');
disp(Tr,'Rotor turns per phase =');
disp(3^(1/2)*Er,'Rotor voltage between slip rings at standstill (Volts)=');
//in book answers are 72, 48 and 266.7 Volts respectively.  The answers vary due to round off error
