// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 3 Example 4")
v=0.78;//volume of cylinder in m^3
p=101.325;//atmospheric pressure in kPa
disp("total work done by the air at atmospheric pressure of 101.325 kPa")
disp("W=(pdv)cylinder+(pdv)air")
disp("0+p*(delta v)")
disp("work done by air(W)=-p*v in KJ")
W=-p*v
disp("so work done by surrounding on system =79.03 KJ")
