// Caption: Finding efficiency of machine
// Example 5.4

clear;
close;
clc;
I_a=45000/(sqrt(3)*230*.8);//armature current
R_f=29.8*((234.5+75)/(234.5+25));//field resistance at 75 degree celsius
R_a=0.0335*((234.5+75)/(234.5+25));//armature dc resistance at 75 degree celsius
I_f=5.5;
L_f=(I_f^2*R_f)/1000;//field loss
L_a=(3*I_a^2*R_a)/1000;//armature loss
V_i=230/sqrt(3)-I_a*(.8+%i*.6)*R_a;//internal voltage
L_s=.56;//stray load loss
L_c=1.2;//open circuit core loss
L_w=.91;//frictional and winding loss
L_t=L_f+L_a+L_s+L_c+L_w//total losses
Input=46.07;
Eff=1-L_t/Input;
disp(Eff*100,'efficiency of the system is(%) ')
//Result
//efficiency of the system is(%)86.683487