//Caption:Estimate the output and efficiency of a shunt motor when the input current is 20Amp and 100Amp
//Exam:2.44
clc;
clear;
close;
V=500;//applied voltage(in V)
R_sh=500;//field resistance (in Ohm)
R_a=0.2;//armature resistance(in Ohm)
I_o=4;//no load current (in Amp)
I_sh=V/R_sh;//field current(in Amp)
I_a=I_o-I_sh;//armature current(in Amp)
L_cf=V*I_sh;//copper losses in field(in watts)
L_ca=(I_a^2)*R_a;//copper losses in armature(in watts)
L_tc=L_cf+L_ca;//total copper losses
L_t=V*I_o;//input power to motor on no load(in watts)
L_m=L_t-L_tc;//iron & mechanical losses(in watts)
L_c=L_m+L_cf;//constant losses(in watts)
//(a) when input current is 20 Amp
I_l1=20;//input current(in Amp)
I_a1=I_l1-I_sh;//armature current when I_l1 input current(in Amp)
L_ca1=(I_a1^2)*R_a;//copper losses in armature when I_l1 input current(in watts)
L_T1=L_c+L_ca1;//total losses at this load(in watts)
I_p=V*I_l1;//input power(in watts)
O_p1=I_p-L_T1;//output power when input current is 20 Amp(in watts)
disp(O_p1,'output power when input current is 20 Amp(in watts)=');
E_1=(O_p1/I_p)*100;//efficiency of the shunt motor when input current is 20 Amp
disp(E_1,'efficiency of the shunt motor when input current is 20 Amp(in %)=');
//(b) when input current is 100 Amp
I_l2=100;//input current(in Amp)
I_a2=I_l2-I_sh;//armature current when I_l2 input current(in Amp)
L_ca2=(I_a2^2)*R_a;//copper losses in armature when I_l2 input current(in watts)
L_T2=L_c+L_ca2;//total losses at this load(in watts)
I_p=V*I_l2;//input power(in watts)
O_p2=I_p-L_T2;//output power when input current is 100 Amp(in watts)
disp(O_p2,'output power when input current is 100 Amp(in watts)=');
E_2=(O_p2/I_p)*100;//efficiency of the shunt motor when input current is 100 Amp
disp(E_2,'efficiency of the shunt motor when input current is 100 Amp(in %)=');