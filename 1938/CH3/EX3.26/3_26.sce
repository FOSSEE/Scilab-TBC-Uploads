clc,clear
printf('Example 3.26\n\n')

R_a=0.2 //armature resistance 
V=240,I=16
I_a_g=60 , I_a_m=71 //armature currents for generator and motor
I_sh_g=3 , I_sh_m=2  //field current for generator and motor 

//for generator
arm_cu_loss_g = R_a*I_a_g^2//armature copper loss for generator
field_cu_loss_g= V*I_sh_g //field copper loss for generator

//for motor
arm_cu_loss_m = R_a*I_a_m^2//armature copper loss for motor
field_cu_loss_m= V*I_sh_m //field copper loss for motor
power_drawn=V*I
field_loss_total_g_m= field_cu_loss_m + field_cu_loss_g
arm_cu_loss_total_g_m = arm_cu_loss_m + arm_cu_loss_g
IFW_losses = power_drawn - (arm_cu_loss_total_g_m + field_loss_total_g_m)  //Iron , friction and windage losses
IFW_losses_each= IFW_losses /2  // Iron , friction and windage losses for each machine

//for generator
total_loss_g = field_cu_loss_g + arm_cu_loss_g + IFW_losses_each //total loss in generator
generator_output=V*I_a_g
generator_input = generator_output + total_loss_g
eta_g = 100*(generator_output/generator_input)//generator efficiency 
printf('Efficiency of generator is %.4f percent\n',eta_g)

//for motor
total_loss_m= field_cu_loss_m + IFW_losses_each  +  arm_cu_loss_m //total loss in motor
motor_input=V*(I_a_m+I_sh_m)
motor_output = motor_input - total_loss_m
eta_m = 100*(motor_output/motor_input)//motor efficiency 
printf('Efficiency of motor is %.4f percent\n',eta_m)
