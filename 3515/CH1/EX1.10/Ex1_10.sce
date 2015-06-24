// Exa 1.10
format('v',7);
clc;
clear;
close;
// Given data
V1=2;// in V
V2=3;// in V
Rf=3;// in kohm
R1=1;// in kohm
disp("Output voltage when only 2V voltage source is acting in volt")
Vo1= (1+Rf/R1)*V1;
disp(Vo1);
disp("Output voltage due to 3V voltage source in volt")
Vo2= (1+Rf/R1)*V2;
disp(Vo2);
Vo= Vo1+Vo2;// in volts
disp(Vo,"Total output voltage in volts")
