clc,clear
printf('Example 3.6\n\n')

I_a=37,I_sh=0.85//armature and field current for motor
V=230
R_a=0.33 //armature resistance

I_a_g=30,I_sh_g=0.8//armature and field current for generator

//for motor
arm_cu_loss= I_a^2* R_a   //armature copper losses
field_cu_loss=V*I_sh  //field copper loss
total_cu_loss= field_cu_loss + arm_cu_loss //total copper loss 

//for generator
arm_cu_loss_g= I_a_g^2* R_a   //armature copper losses
field_cu_loss_g=V*I_sh_g  //field copper loss
total_cu_loss_g= field_cu_loss_g + arm_cu_loss_g //total copper loss

//for motor-generator set
total_cu_loss_set=   total_cu_loss_g + total_cu_loss
P_supply=V*(I_a - I_a_g + I_sh+ I_sh_g ) //power taken from supply
stray_loss= P_supply - (total_cu_loss_g + total_cu_loss) 
stray_loss_each=  stray_loss/2   //stray loss for each machine

//efficiency of motor
motor_input = V*(I_a+I_sh)
motor_output =  motor_input - (stray_loss_each + total_cu_loss)
eta_m=  100* motor_output/motor_input //efficiency of motor
printf('Efficiency of motor is %.2f percent \n',eta_m)
//efficiency of generator
generator_input = motor_output   //output of motor is input of generator
generator_output =  generator_input - (stray_loss_each + total_cu_loss_g)
eta_g=  100* generator_output/generator_input //efficiency of generator
printf('Efficiency of generator is %.2f percent \n',eta_g)
