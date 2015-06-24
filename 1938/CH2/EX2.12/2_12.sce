clc,clear
printf('Example 2.12\n\n')

R_a= 1, I_a=1.2 , V=50
//part(i)
E_b = V - I_a*R_a
rot_loss_NL =E_b*I_a //no load rotational loss 
printf('(i)No load rotational losses = %.2f W',rot_loss_NL)

//part(ii)
omega_2000=2*%pi*2000/60 //angular velocity when speed of motor =2000 rpm
K_m=E_b/omega_2000   //to determine K_m
V=48
omega_1800=2*%pi*1800/60 //angular velocity when speed of motor =1800 rpm
E_b=K_m*omega_1800
I_a = (V-E_b)/R_a  //armature current
P_dev = E_b*I_a//power developed
motor_output =  P_dev - rot_loss_NL
printf('\n(ii)Motor output = %.2f W',motor_output)

//part(iii)
E_b=0 //when motor stalls
V_stall=20 //voltage during stalling
I_a=V_stall/R_a //armature current during stalling
T_stall = K_m*I_a //stalling torque
printf('\n(iii)Stalling torque = %.2f N-m',T_stall)
printf('\n\npart(ii) answer is slightly different due to inaccurate calculation of Power developed')
