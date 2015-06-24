//Caption: Determine (a)Efficiency (b)Regulation at loading conditions
//Exa:2.8
clc;
clear;
close;
P_s=10000//Supplied power (in VA)
V_1=440//Primary voltage (in volts)
V_2=240//Secondary voltage(in volts)
f=50//frequency(in hertz)
I_l=35//Load current(in A)
V_l=234//Load voltage(in volts)
W=8500//Wattmeter reading(in watts) connected on 440V side
P_o=I_l*V_l
P_i=W
Eff=P_o/(P_i)*100
disp(Eff,'(a)Efficiency(in %)=')
V_d=V_2-V_l
Re=V_d/(V_2)*100
disp(Re,'(b)Regulation(in%)=')