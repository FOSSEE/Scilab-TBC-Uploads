clc,clear
printf('Example 3.27\n\n')

R_a=0.015,V=250 //line voltage
I=45 //line current
I_a_m=385, I_sh_m=4 //armature and field currents for motor
I_a_g=340, I_sh_g=5 //armature and field currents for generator
arm_cu_loss_m= R_a*I_a_m^2   //armature copper loss for motor
field_cu_loss_m= V*I_sh_m    //field copper loss for motor

arm_cu_loss_g= R_a*I_a_g^2  //armature copper loss for generator
field_cu_loss_g= V*I_sh_g   //field copper loss for motor

total_cu_loss = field_cu_loss_g + arm_cu_loss_g  +  field_cu_loss_m + arm_cu_loss_m  //total copper loss for both machines
P_aux = V*I  //power taken from auxillary supply
stray_loss= P_aux - total_cu_loss
stray_loss_each = stray_loss/2  //stray loss for each machine

total_loss_g = stray_loss_each + arm_cu_loss_g + field_cu_loss_g  //total losses in generator
generator_output=V* I_a_g
eta_g = 100*(generator_output/(generator_output + total_loss_g))//generator efficiency
printf('Efficiency of generator is %.4f percent\n',eta_g)

total_loss_m = stray_loss_each + arm_cu_loss_m + field_cu_loss_m//total losses in motor
motor_input=V*(I_a_m+I_sh_m)
motor_output = motor_input - total_loss_m
eta_m = 100*(motor_output/motor_input)//motor efficiency 
printf('Efficiency of motor is %.4f percent\n',eta_m)
