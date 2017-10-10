// Exa 1.16
format('v',7);
clc;
clear;
close;
// Given data
R1= 33;// in kΩ
R2= 10;// in kΩ
R3= 330;// in kΩ
V1= '50mV sin(1000 t)';
V2= '10mV sin(3000 t)';
Vo1= R3/R1*50*10^-3;
Vo2= R3/R2*10*10^-3;
// Vo= -Vo1-Vo2;
disp("Output voltage is "+string(-Vo1)+" sin (1000 t)"+string(-Vo2)+" sin(3000 t)")

