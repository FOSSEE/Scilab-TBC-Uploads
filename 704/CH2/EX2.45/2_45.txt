//Caption:Calculate the motor output, H.P. and efficiency when the total current taken from the mains is 35 Amp
//Exam:2.45
clc;
clear;
close;
V=230;//applied voltage(in V)
R_sh=230;//field resistance (in Ohm)
R_a=0.3;//armature resistance(in Ohm)
I_o=2.5;//no load current (in Amp)
I_sh=V/R_sh;//field current(in Amp)
I_a=I_o-I_sh;//armature current(in Amp)
L_cf=V*I_sh;//copper losses in field(in watts)
L_ca=(I_a^2)*R_a;//copper losses in armature(in watts)
L_tc=L_cf+L_ca;//total copper losses
L_t=V*I_o;//input power to motor on no load(in watts)
L_m=L_t-L_tc;//iron & mechanical losses(in watts)
L_c=L_m+L_cf;//constant losses(in watts)
// when input current is 35 Amp(On load condition)
I_l=35;//input current(in Amp)
I_a1=I_l-I_sh;//armature current when I_l input current(in Amp)
L_ca1=(I_a1^2)*R_a;//copper losses in armature when I_l input current(in watts)
L_T1=L_c+L_ca1;//total losses at this load(in watts)
I_p=V*I_l;//input power(in watts)
O_p=I_p-L_T1;//output power(in watts)
disp(O_p,'output power of motor(in watts)=');
H.p=O_p/746;//the shunt motor H.P
disp(H.p,'the shunt motor H.P.=');
E_1=(O_p/I_p)*100;//efficiency of the shunt motor when input current is 35 Amp
disp(E_1,'efficiency of the shunt motor when input current is 35 Amp(in %)=');