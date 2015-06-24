//Caption:In a single phase transformer Determine equivalent resistance referred to secondary side and equivalent reactance referred to secondary side
//Exam:3.19
clc;
clear;
close;
V_1=2000;//Primary voltage at no load or full load(in Volts)
V_2=400;//Secondary voltage at no load (in Volts)
K=V_2/V_1;//Ratio of transformation
R_1=5.2;//Primary resistance(in Ohm)
R_2=0.2;//Secondary resistance(in Ohm)
X_1=12.5;//Primary reactance(in Ohm)
X_2=0.5;//Secondary reactance(in Ohm)
R_o2=R_2 + (K^2)*R_1;//Equivalent resistance as referred to secondary(in Ohm)
disp(R_o2,'Equivalent resistance as referred to secondary(in Ohm)=');
X_o2=X_2 + (K^2)*X_1;//Equivalent reactance as referred to secondary(in Ohm)
disp(X_o2,'Equivalent reactance as referred to secondary(in Ohm)=');