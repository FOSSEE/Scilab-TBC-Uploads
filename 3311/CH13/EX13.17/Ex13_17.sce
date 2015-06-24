// chapter 13
// example 13.17
// Determine the thermal resistance of the heat sink
// page-842-843
clear;
clc;
// given
I_D=20; // in A
t_on=10; // in us
del=0.1; // in % (duty cycle)
T_A=40; // in degree C
T_J_max=150; // in degree C
theta_JC=1.5; // in degree C/W
R_ds_on=5; // in ohm
T_pr=0.03; // assumption as done in the book
// calculate
t_on=t_on*1E-6; // changing unit from us to s
P_cond=I_D^2*R_ds_on;
P_peak=P_cond;
// since P_peak=(T_J_max-T_C)/(T_pr*theta_JC), therefore we get
T_C=T_J_max-P_peak*T_pr*theta_JC; 
P_diss=(del/100)*P_peak;
// since P_diss=(T_C-T_A)/theta_CA, therefore we get
theta_CA=(T_C-T_A)/P_diss;
printf("\nThe thermal resistance of the heat sink is \t theta_CA=%.f degree C/W",theta_CA);

// Note :The answer vary slightly due to precise calculation