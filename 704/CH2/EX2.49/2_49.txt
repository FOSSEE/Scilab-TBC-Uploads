//Caption:Find the copper losses,iron& friction losses and commerical efficiency.
//Exam:2.49
clc;
clear;
close;
V=250;//supply voltage(in V)
R_sh=100;//shunt field resistance(in Ohm)
R_a=0.1;//armature resistance(in Ohm)
I_sh=V/R_sh;//field current(in Amp)
I_l=197.5;//motor taking current(in Amp)
I_a=I_l+I_sh;//Armature current(in Amp)
E=V+I_a*R_a;//E.M.F generated(in V)
H.p=80;//motor giving H.P.
P_m=H.p*735.5;//mechanical power input (in watts)
P_a=E*I_a;//electrical power developed in armature(in watts)
L_i=P_m-P_a;//iron & friction losses(in watts)
disp(L_i,'iron & friction losses in motor(in watts)=');
O_p=V*I_l;//electrical power output
L_c=P_a-O_p;//copper losses(in watts)
disp(L_c,'copper losses in a shunt generator(in watts)=');
L_t=L_i+L_c;//Total losses(in Watts)
I_p=O_p+L_t;//Input(in Watts)
E_f=(O_p/I_p)*100;//Commerical efficiency
disp(E_f,'commerical efficiency(in %)=');