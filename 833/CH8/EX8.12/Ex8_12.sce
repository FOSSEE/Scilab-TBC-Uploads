//Caption:Find efficiency of motor
//Exa:8.12
clc;
clear;
close;
V=500//Voltage of shunt motor(in volts)
I=10//Current taken by motor on no load(inA)
I_f=3//Field Current(inA)
r_a=0.1//Armature resistance(in ohms)
P_i=100000//Input power to motor(in watt)
P_nl=V*I
I_ao=I-I_f
P_acn=(I_ao^2)*r_a
P_fcn=I_f*V
P_c=(P_nl)-P_acn-P_fcn
I_l=P_i/V
I_al=I_l-I_f
P_acl=(I_al^2)*r_a
P_fcl=V*I_f
L_t=P_acl+P_fcl+P_c
Eff=((P_i-L_t)/P_i)*100
disp(Eff,'Efficiency of motor(in%) is=')