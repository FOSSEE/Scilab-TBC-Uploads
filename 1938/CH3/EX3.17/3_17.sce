clc,clear
printf('Example 3.17\n\n')

V=500
R_a=0.22,R_sh= 250//armature resistance and shunt field resistance
I=5 //no load current
motor_input_NL=V*I   //no load motor input
I_sh=V/R_sh
I_a_NL= I- I_sh //no load armature current
arm_cu_loss_NL = R_a*I_a_NL^2 //no load armature copper loss
constant_loss = motor_input_NL - arm_cu_loss_NL 

//When motor draws 100 A current 
I=100
I_a = I - I_sh
arm_cu_loss  =R_a* I_a^2  //armature copper loss
total_losses =   arm_cu_loss +  constant_loss
motor_input = V*I
motor_output = motor_input -total_losses 
eta_m=100*(motor_output/motor_input) //motor efficiency
printf('(i)Efficiency of motor at 100 A current is %.2f percent \n',eta_m)

//part(b)
E_b_NL= V- I_a_NL*R_a //back emf at no load
E_b= V- I_a*R_a //back emf at 100 A 
//E_b is proportional to N.. and using componendo dividendo
speed_change= 100*((E_b_NL - E_b)/E_b)
printf('(ii)Percentage change in speed = %.3f percent\n\n',speed_change)


printf('Note that the following were assumptions made\n')
printf('(i) Due to heating , resistance of shunt field winding will be increased which will reduce the shunt field current.This will decrease the flux which is neglected\n')
printf('(ii) Though the motor speed is changing from no load to given load , the mechanical losses are assumed to be cosnstant\n')
printf('(iii)The effect of armature reaction aon main pole flux and its effect on iron loss is neglected')
