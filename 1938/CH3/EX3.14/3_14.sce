clc,clear
printf('Example 3.14\n\n')

I=5  //no load current
V=500
R_sh=250,R_a=0.5 //resistance of shunt field winding and armature
motor_input_NL = V*I
I_sh=V/R_sh
I_a=I-I_sh
arm_cu_loss_NL = R_a*I_a^2  //no load armature copper loss
constant_loss = motor_input_NL - arm_cu_loss_NL
I_FL=50, I_a_FL = I_FL - I_sh   //currents at full load
arm_cu_loss_FL =  R_a*I_a_FL^2 //full load armature copper loss

total_loss= constant_loss + arm_cu_loss_FL 
motor_input=V*I_FL
motor_output_FL= motor_input - total_loss
printf('Required output power is %.3f kW\n',motor_output_FL/1000)
eta=100*(motor_output_FL/motor_input) //full load efficiency
printf('Full load efficiency of motor with 50A current is %.2f percent ',eta)
