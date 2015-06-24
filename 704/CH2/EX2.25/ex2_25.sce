//Caption:Find the speed at which motor will run when connected in series with a 4 Ohm resistance
//Exam:2.25
clc;
clear;
close;
V=200;//supply voltage (in V)
R_m=1;//motor resistance b/w terminals(in Ohm)
I_1=15;//motor input current(in Amp)
N_1=800;//speed of the motor (in rpm)
E_1=V-(I_1*R_m);//back emf developed(in V)
R=4;//resistance connected in series with motor (in Ohm)
I_2=I_1;//when resistance of 4 Ohm connected in series with the motor ,motor input current is same
E_2=V-I_2*(R_m+R);//back emf developed when R connected in series with motor(in V)
N_2=E_2*N_1/E_1;//speed of the motor when it connected in series with a 4 Ohm resistance(in rpm)
disp(N_2,'speed of the motor when it connected in series with a 4 Ohm resistance(in rpm)=');