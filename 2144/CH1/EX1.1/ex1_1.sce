// Exa 1.1
clc;
clear;
close;
// Given data
P_m = 760;// pressure of mercury in mm
P_m_bar = P_m/750;// in bar
P_W = 0.006867;// pressure of water in bar
P = P_m_bar+P_W;// in bar
disp(P,"The absolute pressure of gas in bar is");

