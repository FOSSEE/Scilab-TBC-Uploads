clc,clear
printf('Example 3.29\n\n')

V=220, I=10
R_a=0.05 //artmature resistance
I_a_m= 73, I_sh_m = 2 //armature and field current for motor
I_a_g=67.5,I_sh_g=2.5//armature and field current for generator

arm_cu_loss_m = R_a*I_a_m^2 //motor armature copper loss
field_cu_loss_m =V*I_sh_m  //  motor field copper loss 

arm_cu_loss_g = R_a*I_a_g^2 //generator armature copper loss
field_cu_loss_g =V*I_sh_g  //field copper loss generator

total_cu_loss = field_cu_loss_g + arm_cu_loss_g  +  field_cu_loss_m + arm_cu_loss_m  //total copper loss for both machines
power_input = V*I
stray_loss= power_input - total_cu_loss  
stray_loss_each = stray_loss/2  //stray loss for each machine

//motor efficiency
total_loss_m= field_cu_loss_m + stray_loss_each  +  arm_cu_loss_m  //total motor losses
motor_input = V*(I_a_m + I_sh_m )
motor_output =motor_input - total_loss_m
eta_m = 100*(motor_output/motor_input)//motor efficiency 
printf('Efficiency of motor is %.4f percent\n',eta_m)

//generator efficiency
total_loss_g= field_cu_loss_g + stray_loss_each  +  arm_cu_loss_g  //total generator losses
generator_output =V*I_a_g
generator_input = generator_output +  total_loss_g
eta_g = 100*(generator_output/generator_input)//motor efficiency 
printf('Efficiency of generator is %.4f percent\n',eta_g)
