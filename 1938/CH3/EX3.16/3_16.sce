clc,clear
printf('Example 3.16\n\n')

I=4 //no load current in amperes
V=500
motor_input_no_load=I*V   //no load motor input
R_a=0.5,R_sh=250//resistance of armature and shunt field resistnace
I_sh=V/R_sh

I_a=I-I_sh
arm_cu_loss_noload=R_a*I_a^2  //No-load armature copper losses
constant_loss=motor_input_no_load - arm_cu_loss_noload
I_FL=40,I_aFL=I_FL- I_a  //full load currents
arm_cu_loss_fulload=R_a*I_aFL^2 //Full-load armature copper losses
Total_loss=arm_cu_loss_fulload + constant_loss

motor_input=V*I_FL
motor_output_fullload=motor_input - Total_loss
printf('Output power at full-load is %.0f W',motor_output_fullload) 
efficiency= motor_output_fullload*100/motor_input //motor efficiency
printf('\nEfficiency at full-load is %.1f percent',efficiency)

E_bNL=V-I_a*R_a
E_bFL=V-I_FL*R_a

//E_b =N*phi
//E_bNL/E_bFL=N_NL/N_FL
//applying rules of componendo and dividendo
//change_in _speed=(N_NL - N_FL)/N_FL=(E_bNL - E_bFL)/E_bFl

change_in_speed=100*(E_bNL - E_bFL)/E_bFL
printf('\npercentage change in speed from no load to full load is %.3f percent',change_in_speed)
