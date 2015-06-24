//Caption:Calculate the full load motor output and its efficiency
//Exam:2.46
clc;
clear;
close;
V=500;//applied voltage(in V)
R_sh=250;//field resistance (in Ohm)
R_a=0.2;//resistance of armature including brushes(in Ohm)
I_o=5;//no load current (in Amp)
I_sh=V/R_sh;//shunt field current(in Amp)
I_a=I_o-I_sh;//armature current(in Amp)
L_a=(I_a^2)*R_a;//armature brush drop(in watts)
L_t=V*I_o;//input to motor on no load(in watts)
L_c=L_t-L_a;//constant losses(in watts)
//On full load condition
I_l=52;//input current(in Amp)
I_a1=I_l-I_sh;//armature current when I_l1 input current(in Amp)
L_a1=(I_a1^2)*R_a;//losses in armature when I_l1 input current(in watts)
L_T1=L_c+L_a1;//total losses at this load(in watts)
I_p=V*I_l;//input power(in watts)
O_p=I_p-L_T1;//output power(in watts)
disp(O_p,'output of the motor(in watts)=');
H.p=O_p/735.5;//the shunt motor H.P
disp(H.p,'the shunt motor H.P.=');
E_1=(O_p/I_p)*100;//efficiency of the full load shunt motor when input current is 52 Amp
disp(E_1,'efficiency of the full load shunt motor when input current is 52 Amp(in %)=');