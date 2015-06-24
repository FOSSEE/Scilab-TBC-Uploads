//Caption:In a single phase transformer Calculate the secondary terminal voltage at full load.
//Exam:3.17
clc;
clear;
close;
V_1=2000;//Primary voltage at no load or full load(in Volts)
V_2=400;//Secondary voltage at no load (in Volts)
K=V_2/V_1;//Ratio of transformation
R_1=5;//Primary resistance(in Ohm)
R_2=0.2;//Secondary resistance(in Ohm)
X_1=12;//Primary reactance(in Ohm)
X_2=0.48;//Secondary reactance(in Ohm)
R_o2=R_2 + (K^2)*R_1;//Equivalent resistance as referred to secondary(in Ohm)
X_o2=X_2 + (K^2)*X_1;//Equivalent reactance as referred to secondary(in Ohm)
O_p=10;//Rated output(i KVA)
I_2=O_p*1000/V_2;//Full load secondary current(in Amp)
p=0.8;//power factor
a=acosd(p);//power angle
V_d=I_2*R_o2*cosd(a) + I_2*X_o2*sind(a);//Voltage drop (in Volts)
V=V_2-V_d;//Secondary terminal voltage at full load (in Volts)
disp(V,'Secondary terminal voltage at full load (in Volts)=');