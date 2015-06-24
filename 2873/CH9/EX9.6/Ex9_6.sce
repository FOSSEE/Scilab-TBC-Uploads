// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 9 Example 6")
T1=300;//minimum temperature in brayton cycle in K
T5=1200;//maximum temperature in brayton cycle in K
n_isen_c=0.85;//isentropic efficiency of compressor
n_isen_t=0.9;//isentropic efficiency of turbine
y=1.4;//expansion constant
disp("NOTE=>In this question formula for overall pressure ratio is derived,which cannot be done using scilab,so using this formula we proceed further.")
disp("overall pressure ratio(rp)=(T1/(T5*n_isen_c*n_isen_t))^((2*y)/(3*(1-y)))")
rp=(T1/(T5*n_isen_c*n_isen_t))^((2*y)/(3*(1-y)))
disp("so overall optimum pressure ratio=13.6")
