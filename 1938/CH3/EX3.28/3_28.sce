clc,clear
printf('Example 3.28\n\n')

V=500,P=1000*10^3,I=30
I_a_m = 200 + 30 , I_a_g =200 //armature current for motor and generator
I_sh_m = 1.8, I_sh_g =3.5 //field current for motor and generator
brush_drop=230
R_a=0.075  //armature resitance

arm_cu_loss_m = R_a*I_a_m^2 + 2*brush_drop //motor armature copper loss
field_cu_loss_m =V*I_sh_m  //  motor field copper loss 

arm_cu_loss_g = R_a*I_a_g^2 + 2*brush_drop  //generator armature copper loss
field_cu_loss_g =V*I_sh_g  //field copper loss generator

total_cu_loss = field_cu_loss_g + arm_cu_loss_g  +  field_cu_loss_m + arm_cu_loss_m  //total copper loss for both machines
P_aux = V*I  //power taken from auxillary supply
stray_loss= P_aux - total_cu_loss  
stray_loss_each = stray_loss/2  //stray loss for each machine

total_loss_g = stray_loss_each + arm_cu_loss_g + field_cu_loss_g  //total loss in generator
generator_output=V* I_a_g
eta_g = 100*(generator_output/(generator_output + total_loss_g))//generator efficiency
printf('Efficiency of generator is %.0f percent\n',eta_g)
