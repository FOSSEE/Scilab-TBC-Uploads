// Display modeK
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 7 Example 13")
T_min=(20+273);//minimum temperature reservoir temperature in K
T_max=(500+273);//maximum temperature reservoir temperature in K
n=0.25;//efficiency of heat engine
disp("reversible engine efficiency,n_rev=1-(T_min/T_max)")
n_rev=1-(T_min/T_max)
disp("second law efficiency=n/n_rev")
n/n_rev
disp("in %")
n*100/n_rev
