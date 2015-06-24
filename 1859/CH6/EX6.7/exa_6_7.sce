// Exa 6.7
clc;
clear;
close;
// Given data
P=100;// in ohm
Q=100;// in ohm
S=230;// in ohm
R=P*S/Q;// in ohm
del_P_BY_P= 0.02;// in %
del_Q_BY_Q= 0.02;// in %
del_S_BY_S= 0.01;// in %
del_R_BY_R= del_P_BY_P + del_Q_BY_Q + del_S_BY_S;// in %
disp(del_R_BY_R,"Relative limiting error of unknown resistance in percentage")
disp("So limiting values of unknown resistance "+string(R-R*del_R_BY_R/100)+" ohm to "+string(R+R*del_R_BY_R/100)+" ohm")
