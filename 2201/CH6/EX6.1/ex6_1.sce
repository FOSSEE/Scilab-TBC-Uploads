// Exa 6.1
clc;
clear;
close;
// Given data
C1_min= 5;// in pF
C1_max= 50;// in pF
C2_min= 5;// in pF
C2_max= 50;// in pF
C1_min=C1_min*10^-12;// in F
C2_min=C2_min*10^-12;// in F
C1_max=C1_max*10^-12;// in F
C2_max=C2_max*10^-12;// in F
L = 10;// in mH
L = L * 10^-3;// in H
C_T_min = (C1_min*C2_min)/(C2_min+C2_min);// in F
f_o_max = 1/( 2*%pi*(sqrt(L*C_T_min)) );//in Hz 
f_o_max = f_o_max * 10^-6;// in MHz
C_T_max = (C1_max*C2_max)/(C2_max+C2_max);// in F
f_o_min = 1/( 2*%pi*(sqrt(L*C_T_max)) );//in Hz 
f_o_min = f_o_min * 10^-3;// in kHz
disp("The tuning range for circuit will be : "+string(round(f_o_min))+" kHz to "+string(round(f_o_max))+" MHz")
