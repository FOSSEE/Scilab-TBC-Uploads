clc,clear
printf('Example 3.23\n\n')

I_a_g=330,I_a_m=380
R_a=0.02 //armature resistance
V=250,I=50
arm_cu_loss_g= R_a*I_a_g^2//armature copper loss for generator
arm_cu_loss_m= R_a*I_a_m^2//armature copper loss for motor
power_drawn=V*I
stray_losses = power_drawn - (arm_cu_loss_m + arm_cu_loss_g)
stray_losses_each = stray_losses/2 //stray losses for each machine

//for motor
I_sh_m=4.2   //Shunt current in case of motor
field_cu_loss_m=V*I_sh_m  //field copper loss in case of motor
total_loss = field_cu_loss_m + stray_losses_each  +  arm_cu_loss_m
motor_input= V*(I_a_m+I_sh_m) 
motor_output = motor_input - total_loss
eta_m = 100*(motor_output/motor_input)//motor efficiency 
printf('Efficiency of motor is %.4f percent\n',eta_m)

//for generator
I_sh_g=5  //Shunt current in case of generator
field_cu_loss_g=V*I_sh_g //field copper loss in case of generator
total_loss = field_cu_loss_g + stray_losses_each  +  arm_cu_loss_g
generator_output = V*I_a_g
generator_input= generator_output + total_loss
eta_g = 100*(generator_output/generator_input)//generator efficiency 
printf('Efficiency of generator is %.4f percent\n',eta_g)
