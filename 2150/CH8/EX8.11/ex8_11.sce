// exa 8.11
clc;
clear;
close;
// Given data
R_i = 10;// in kΩ 
R_im = 20;// in kΩ
R_f = 500;// in kΩ
A_vmin = -(R_f/R_i);
disp(A_vmin,"Closed loop voltage gain corresponding to minimum resistance is");
A_vmax = -(R_f/R_im);
disp(A_vmax,"Closed loop voltage gain corresponding to maximum resistance is");
