// Calculating the tensile stress and factor of safety
clc;
disp('Example 8.4, Page No. = 8.12')
// Given Data
rpm = 3000;// Speed in r.p.m.
Dr1 = 1.15;// Outer diameter  of rotor (in meter)
Nrs = 39;// Number of rotor slot
Drs = 140;// Depth of rotor slot (in mm)
Wrs = 45;// Width of rotor slot (in mm)
gs = 7800;// Density of steel (in kg per meter cube)
yield_stress = 520*10^(6);// Yield stress of rotor steel (in Newton per meter square)
// Calculation of the tensile stress and factor of safety
n = rpm/60;// Speed in r.p.s
Dr2 = Dr1-2*Drs*10^(-3);// Diameter of rotor at the bottom of slots (in meter)
t = (%pi*Dr2*10^(3)/Nrs)-Wrs;// Width of tooth at the bottom of slot (in mm)
alpha = 360/Nrs;// Angle subtended by each slot (in degree)
f = %pi^(3)/(3*t*10^(-3))*gs*n*n*(alpha/360)*(Dr1^(3)-Dr2^(3));// Tensile stress (in Newton per meter square)
disp(f,'Tensile stress at the root of the teeth at normal operating speed (Newton per meter square)=');
f_20 = 1.2^(2)*f;// Tensile stress at 20% over speed.  Since centrifugal force is propartional of square of speed
disp(yield_stress/f_20,'Factor of safety at 20% over speed =');
//in book answers are 178 (Mega Newton per meter square) and 2.03 respectively.  The answers vary due to round off error
