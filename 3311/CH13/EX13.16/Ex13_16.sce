// chapter 13
// example 13.16
// Determine the heat-sink required
// page-841-842
clear;
clc;
// given
Vcc=100; // in V
V_CE_on=1; // in V 
I_on=20; // in A
t_on=1; // in us
t_off=2; // in us
fs=10; // in kHz
del=0.9; // duty cycle
T_A=35; // in degree C
T_J_max=125; // in degree C
theta_JC=0.7; // in degree C/W
theta_CS=0.1; // in degree C/W
// calculate
t_on=t_on*1E-6; // changing unit from us to s
t_off=t_off*1E-6; // changing unit from us to s
fs=fs*1E3; // changing unit from kHz to Hz
P_cond=V_CE_on*I_on*del; // calcultion of average power
P_loss=Vcc*I_on*(t_on+t_off)*fs/2; // calcultion of switching power loss
P_diss=P_cond+P_loss; // calcultion of total power loss
// since P_diss=(T_J_max-T_A)/(theta_JC+theta_CS+theta_SA), therefore we get
theta_SA=((T_J_max-T_A)/P_diss)-theta_JC-theta_CS; // calcultion of heat-sink required
printf("\nThe required heat sink is \t theta_SA=%.1f degree C/W",theta_SA);

// Note :The answer vary slightly due to precise calculation