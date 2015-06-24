clc,clear
printf('Example 3.10\n\n')

motor_output_FL =15000 //full load motor output
V=250,R_sh=100

//at 80 % of full load
motor_output_FL_dash=(80/100)*motor_output_FL  //80 percent of full load output
eta=90/100 //efficiency
motor_input=motor_output_FL_dash/eta
total_losses = motor_input - motor_output_FL_dash   //at 80 % of full load
//at maximum efficiency , variable losses = constant losses
constant_losses= total_losses/2
variable_losses= constant_losses
I= motor_input/V //line current at 80% load
I_sh= V/ R_sh
I_a= I- I_sh
//since armature copper loss =R_a*I_a^2  
R_a=variable_losses/I_a^2
E_b1=V-I_a*R_a //motor back EMF at 80% of full load
N_1=750 // corresponding speed is given as 750 rpm

//When motor current is 80 A
I=80
I_a=I-I_sh
arm_cu_losses= R_a*I_a^2  //armature copper loss
total_losses =  arm_cu_losses + constant_losses
motor_input= V*I
motor_output = motor_input- total_losses
eta=100*motor_output/motor_input //efficiency of motor
printf('Efficiency of motor is %.2f percent when motor draws 80A current',eta)
E_b2=V-I_a*R_a //motor back EMF at 80% of full load
N_2=N_1*(E_b2/E_b1)  //because E_b is proportional to N
printf('\nand Speed is %.2f r.p.m',N_2)
