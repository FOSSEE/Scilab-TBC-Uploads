// Exa 2.4
format('e',9)
clc;
clear;
close;
// Given data
V = 30;//applied forward voltage in V
R_L = 3;//load resistance in  k ohm
R_L = R_L * 10^3;// in ohm
Imax = V/R_L;// maximum diode current in A
Imax = Imax * 10^3;// in mA
slope = -1/R_L;// in mho
plot([V,0],[0,Imax]);
xlabel("V_F in volts");
ylabel("I_F in mA");
title("DC load line");
disp("DC load line shown in figure")
disp(slope,"The slope of the line in mho is");

// Note: There is calculation error to find the value of slope because -1/3kΩ = -3.33*10^-4 mho,  not = -3.33*10^-3 mho
