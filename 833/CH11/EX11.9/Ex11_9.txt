//Caption:Find (a)the rotor copper loss per phase if motor is running at slip of 4% (b)Mechanical power developed
//Exa:11.9
clc;
clear;
close;
P_i=100000//Input power(in watt)
P_sc=2000//Stator copper loss(in watt)
s=4//slip(in %)
P_r=P_i-P_sc
P_rc=((s/100)*P_r)/3
disp(P_rc,'(a)Rotor copper lossper phase(in watt)=')
P_m=P_r-(P_rc*3)
disp(P_m,'(b)Mechanical power developed(in watt)=')