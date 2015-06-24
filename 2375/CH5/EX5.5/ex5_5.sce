// Exa 5.5
clc;
clear;
close;
// Given data
f_T = 400;// in MHz
D_Beta = 13;// in cm^2/sec
//Ce = (g_m*(W^2))/(2*D_B), so
//f_T = (g_m/(2*%pi))*( (2*D_B)/(g_m*(W^2)) ) = D_B/(%pi*(W^2));
W = sqrt( D_Beta/(%pi*f_T*10^6) );// in cm
W = W * 10^4;// in µm
disp(W,"The base width of silicon transistor in µm is");
