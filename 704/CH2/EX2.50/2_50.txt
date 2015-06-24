//Caption:Determine Copper losses and total losses and Output and BHP of the motor and efficiency of the motor
//Exam:2.50
clc;
clear;
close;
V=230;//supply voltage(in V)
I_l=200;//line current(in Amp)
I_p=V*I_l;//input power (in watts)
R_sh=50;//shunt field resistance(in Ohm)
R_a=0.04;//armature resistance (in ohm)
I_sh=V/R_sh;//shunt field currrent(in Amp)
I_a=I_l-I_sh;//armature current(in Amp)
L_cf=V*I_sh;//copper losses in the field(in watts)
L_ca=(I_a^2)*R_a;//copper loses in armature(in watts)
L_ct=L_cf+L_ca;//Total copper losses(in watts)
disp(L_ct,'copper losses of the motor(in watts)=');
L_s=1500;//Stray losses (in watts)
L_t=L_ct+L_s;//total losses(in watts)
disp(L_t,'total losses of the motor(in watts)=');
O_p=I_p-L_t;//output of the motor(in watts)
disp(O_p,'Output of the motor(in watts)=');
B.h.p=O_p/735.5;//B.H.P. of the motor (in H.P.)
disp(B.h.p,'B.H.P. of the motor (in H.P.)=');
E=(O_p/I_p)*100;//efficiency of the motor(in %)
disp(E,'efficiency of the motor(in %)=');