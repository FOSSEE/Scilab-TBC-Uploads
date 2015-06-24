clc,clear
printf('Example 3.7\n\n')

I_1=40 //motor input current
V=200  //voltage across armature
I_2=32  //load current
V_2=160  //voltage across generator
V_f=15 //voltage drop across field windings
total_input = (V+V_f)*I_1  
Output=V_2*I_2
total_losses = total_input-Output   //total losses in 2 machines

R_se=V_f/I_1   //series field resistance
R_a=0.4 // armature field resistance

total_cu_loss=(R_a + 2*R_se) * I_1^2 + I_2^2*R_a //total copper loss
stray_losses =  total_losses -  total_cu_loss
stray_losses_each =stray_losses /2 //stray losses for each machine

//for motor
motor_input= V*I_1
arm_cu_loss= (R_a + R_se)*I_1*I_1 //armature copper loss
total_losses_motor = arm_cu_loss +  stray_losses_each 
motor_output= motor_input- total_losses_motor
eta_m=100*motor_output/motor_input //efficiency of motor
printf('Efficiency of motor is %.2f percent \n',eta_m)
//for generator
arm_cu_loss_gen=R_a*I_2^2 //armature copper loss
series_field_cu_loss = V_f*I_1 //series field copper loss
total_losses_gen= arm_cu_loss_gen +  series_field_cu_loss + stray_losses_each 
generator_input = total_losses_gen+ Output
eta_gen=100*Output/generator_input //efficiency of generator
printf('Efficiency of generator is %.2f percent',eta_gen)
printf('\n\nAnswer dont match because Output-of-generator is taken as 5220 for calculation while its should have been 5120')
