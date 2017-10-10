// Implementation of example 3.1
// Basic and Applied Thermodynamics by P.K.Nag
// page 54

clc
clear

P=760 //(mm Hg)
dv=0.5 //(m^3)
// since P is in mm Hg and change in volume(dv) is in m^3,so we'll change the unit of pressure
p=101.325 //(kN/m^2)

Wd=(p*dv);
disp("work done by system =")
disp(Wd)
disp("kJ")
// in this work is done by the system,so it is positive
