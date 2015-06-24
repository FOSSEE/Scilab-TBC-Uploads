// Caption: Finding effective armature resistance
// Example 5.2

clear;
close;
clc;
L_loss_sc=1.8/45;//per unit
I_a=1.00;//per unit
R_a_eff=L_loss_sc/I_a^2;//per unit
disp(R_a_eff,'effective armature resistance in per unit=')
R_a_eff=1800/((118^2)*3);//per phase
disp(R_a_eff,'effective armature resistance in ohms per phase=')
//Result
//effective armature resistance in per unit=0.04
//effective armature resistance in ohms per phase=0.0430911