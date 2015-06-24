// Exa 3.30
format('v',7);clc;clear;close;
// Given data
std_cell_emf = 1.45;//e.m.f. of standard cell in V
l = 50;//length in cm
Vdrop = std_cell_emf /l;//voltage drop per unit length in V/cm
Vstdresistor = Vdrop*75;//voltage across standard resistor in V
Stdresistor = 0.1;//standard resistor in ohm
I = Vstdresistor/Stdresistor;//magnitude of current  in A
disp(I,"The magnitude of current in A is");
