// Exa 8.20
clc;
clear;
close;
// Given data
R_f = 200;// in kΩ
R_i = 30;// in kΩ
V_i = 0.1;// in V
V_im = 0.5;// in V
Vo_min = -((R_f/R_i)*V_i);// in V
disp(Vo_min,"The minimum output voltage in V is");
Vo_max = -((R_f/R_i)*V_im);// in V
disp(Vo_max,"The minimum output voltage in V is");
disp("The output voltage range is : "+string(Vo_min)+" V to "+string(Vo_max)+" V")
