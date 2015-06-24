clc,clear
printf('Example 3.31\n\n')

I_1=56  //motor input current
V=590   //voltage across armature
I_2=44  // load current
V_2=400 // voltage across generator
V_field = 40  //voltage drop across field winding
R_a=0.3, R_se=0.7142 //armature and series field resistance for each machine
total_input=(V+V_field)*I_1
output=V_2*I_2
total_loss_g_m= total_input - output   //total losses of 2 machines
R_se=V_field/I_1  //series field resistance for both windings
total_cu_loss = (R_a+ 2*R_se)*I_1^2  + R_a*I_2^2  //total copper loss
stray_loss= total_loss_g_m - total_cu_loss
stray_loss_each = stray_loss/2  //stray loss for each machine

// for motor
motor_input = V*I_1
arm_cu_loss_m =  (R_a+ R_se)*I_1^2    //armature coper losses of motor
total_loss_m= arm_cu_loss_m + stray_loss_each
motor_output = motor_input - total_loss_m
eta_m = 100*(motor_output/motor_input)//motor efficiency 
printf('Efficiency of motor is %.4f percent\n',eta_m)

// for generator
arm_cu_loss_g = R_a*I_2^2  //armature coper losses of generator
series_field_cu_loss_g = V_field*I_1   //series field copper loss
total_loss_g= arm_cu_loss_g + series_field_cu_loss_g + stray_loss_each
generator_output=V_2*I_2
generator_input = generator_output +  total_loss_g
eta_g = 100*(generator_output/generator_input)//generator efficiency 
printf('Efficiency of generator is %.4f percent\n',eta_g)
