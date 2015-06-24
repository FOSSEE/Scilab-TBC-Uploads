//Caption: Determine the back emf in dc shunt motor
//Exam:2.20
clc;
clear;
close;
V=220;//voltage(in V)
R_a=0.7;//Armature resistance(in Ohm)
R_f=200;//field resistant(in Ohm)
P_1=8*10^3;//motor output power(in Watt)
P_2=8*10^3/0.8;//motor input power(in Watt)
I_m=P_2/V;//motor input current(in Amp)
I_sh=V/R_f;//shunt field current (in Amp)
I_a=I_m-I_sh;//Armature current(in Amp)
E_b=V-I_a*R_a;//Back emf (in V)
disp(E_b,'Back emf produced in motor(in Volts)=');