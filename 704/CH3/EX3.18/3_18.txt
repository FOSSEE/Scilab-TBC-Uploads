//Caption:In a single phase transformer Calculate the secondary terminal voltage at full load.
//Exam:3.18
clc;
clear;
close;
V_1=11000;//Primary voltage at no load or full load(in Volts)
V_2=400;//Secondary voltage at no load (in Volts)
K=V_2/V_1;//Ratio of transformation
R_1=4;//Primary resistance(in Ohm)
R_2=0.2;//Secondary resistance(in Ohm)
X_1=10;//Primary reactance(in Ohm)
X_2=0.4;//Secondary reactance(in Ohm)
R_o2=R_2 + (K^2)*R_1;//Equivalent resistance as referred to secondary(in Ohm)
X_o2=X_2 + (K^2)*X_1;//Equivalent reactance as referred to secondary(in Ohm)
O_p=10;//Rated output(in KVA)
I_2=O_p*1000/V_2;//Full load secondary current(in Amp)
Z_o2=((R_o2)^2 +(X_o2)^2)^(1/2);//Equivalent impedance as referred to secondary(in Ohm)
V=V_2-I_2*Z_o2;//Secondary terminal voltage at full load (in Volts)
disp(V,'Secondary terminal voltage at full load (in Volts)=');