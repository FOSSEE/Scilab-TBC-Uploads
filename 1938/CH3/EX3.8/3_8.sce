clc,clear
printf('Example 3.8\n\n')

V=500
Io=5 //no load current
R_a=0.5,R_sh=250//resistance of armature and field circuits
I=100 //current at unknown efficiency

P_in_NL=V*Io  //no load input
I_sh=V/R_sh

Iao=Io-I_sh
arm_cu_loss_no_load=R_a*Iao^2  //No load armature copper loss
constant_losses= P_in_NL- arm_cu_loss_no_load

I_a=I-I_sh
arm_cu_loss= R_a*I_a^2  //New armature copper loss

Total_loss=arm_cu_loss + constant_losses
P_in=V*I
efficiency=(P_in-Total_loss)*100/P_in //required efficiency
printf('Efficiency is %.3f percent when motor takes %.0f A current',efficiency,I)
