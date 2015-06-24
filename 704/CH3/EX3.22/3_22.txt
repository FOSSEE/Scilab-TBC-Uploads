//Caption:In a single phase transformer Find Full load regulation at a power factor (a) 0.8 lagging (b) unity (c) 0.8 leading.
//Exam:3.22
clc;
clear;
close;
V_1=6600;//Primary voltage (in Volts)
V_2=250;//Secondary voltage (in Volts)
K=V_2/V_1;//Ratio of transformation
R_1=10;//Primary resistance (in Ohm)
R_2=0.02;//Secondary resistance (in Ohm)
X_o1=35;//Total leakage reactance referred to the primary winding(in Ohm)
R_o2=R_2 + R_1*(K^2);//Equivalent resistance reffered to the secondary(in Ohm)
X_o2=X_o1*(K^2);//Equivalent reactance reffered to the secondary(in Ohm)
O_p=40;//Rated output (in KVA)
I_2=O_p*1000/250;//Secondary current(in Amp)
P_1=0.8;//Power factor
q=acosd(P_1);
V_r1=((I_2*R_o2*cosd(q) + I_2*X_o2*sind(q))/V_2)*100;//Voltage regulation at 0.8 lagging power factor(in %)
disp(V_r1,'Voltage regulation at 0.8 lagging power factor(in %)=');
V_r0=(I_2*R_o2/V_2)*100;//Voltage regulation at unity power factor(in %)
disp(V_r0,'Voltage regulation at unity power factor(in %)=');
V_r2=((I_2*R_o2*cosd(q) - I_2*X_o2*sind(q))/V_2)*100;//Voltage regulation at 0.8 leading power factor(in %)
disp(V_r2,'Voltage regulation at 0.8 leading power factor(in %)=');