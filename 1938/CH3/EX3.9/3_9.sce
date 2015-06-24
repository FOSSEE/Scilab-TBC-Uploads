clc,clear
printf('Example 3.9\n\n')

V=500  
I_NL=5  //no load current 
P_in_NL = V* I_NL   //no load input
R_a=0.22,R_sh=250 //resistance of armature and shunt field winding
I_sh=V/R_sh
I_a_NL=I_NL-I_sh //armature current no load
arm_cu_loss_NL = R_a*I_a_NL^2  //No-load armature copper loss
constant_loss =  P_in_NL -  arm_cu_loss_NL

//at 100 A current
I=100
I_a = I - I_sh
arm_cu_loss =  R_a*I_a^2 //armature copper loss
total_loss = arm_cu_loss +  constant_loss 
motor_input = V*I
motor_output =  motor_input- total_loss
eta_m= 100*motor_output/motor_input  //motor efficiency
printf('Part(a)\nEfficiency of motor when it takes 100 A current and loaded is %.2f percent\n',eta_m)

//part(b)
E_b_NL = V - I_a_NL*R_a   //back emf at no load

E_b = V- I_a*R_a  //back EMF at 100 A current
//Since E_b is proportional to N and using componendo dividendo
delta_speed= 100*((E_b_NL-E_b)/E_b)
printf('Part(b)\nPercentage speed in speed is %.3f percent\n\n',delta_speed)

printf('Note that the following were assumptions made\n')
printf('(i) Due to heating , resistance of shunt field winding will be increased which will reduce the shunt field current.This will decrease the flux which is neglected\n')
printf('(ii) Though the motor speed is changing from no load to given load , the mechanical losses are assumed to be cosnstant\n')
printf('(iii)The effect of armature reaction aon main pole flux and its effect on iron loss is neglected')
