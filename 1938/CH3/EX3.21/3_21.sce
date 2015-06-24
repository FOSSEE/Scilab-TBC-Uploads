clc,clear
printf('Example 3.21\n\n')

V_avg = (220+190)/2  //average voltage across load
I_avg=12,R_a=0.5,R_sh=250
W_dash=V_avg*I_avg  //power absorbed 
t_1=30,t_2=5
W=W_dash*(t_2/(t_1-t_2))
V=250,I=22  //input current
I_sh = V/R_sh
I_a= I - I_sh
arm_cu_loss = R_a*I_a^2 //armature copper loss
shunt_field_cu_loss =  V*I_sh  //shunt field copper loss
total_losses= shunt_field_cu_loss + arm_cu_loss + W

machine_input = V*I
machine_output = machine_input - total_losses 
eta_m=100*(machine_output /machine_input )  //efficiency when running as motor
printf('Efficiency of machine when opeating as motor taking current of 22A on 250V supply is \n%.1f percent',eta_m)
