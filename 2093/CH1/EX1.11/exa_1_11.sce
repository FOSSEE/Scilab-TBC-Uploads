// Exa 1.11
clc;
clear;
close;
// Given data
Rf=500;// in kohm
min_vvs= 0;// minimum value of variable resistor in ohm
max_vvs= 10;// maximum value of variable resistor in ohm
Ri_min= 10+min_vvs;// in kohm
Ri_max= 10+max_vvs;//in kohm
// Av= Vo/Vi= -Rf/Ri
disp("Closed loop voltage gain corresponding to Ri(min) is ")
Av=-Rf/Ri_min;
disp(Av)
disp("and closed loop voltage gain corresponding to Ri(max) is ")
Av=-Rf/Ri_max;
disp(Av)
disp("Thus the closed loop gain of the circuit can be adjusted at any value between -25 to -50 with the help of variable resistor.")
