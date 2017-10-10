// Exa 1.12
clc;
clear;
close;
// Given data
Rf=200;// in kohm
R1= 20;// in kohm
// Av= Vo/Vi= -Rf/Ri
Av= -Rf/R1;
Vi_min= 0.1;// in V
Vi_max= 0.5;// in V
// Vo= Av*Vi
Vo_min= Av*Vi_min;// in V
Vo_max= Av*Vi_max;// in V
disp("Output voltage ranges from "+string(Vo_min)+"V to "+string(Vo_max)+"V")
