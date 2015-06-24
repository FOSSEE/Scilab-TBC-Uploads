clc,clear
printf('Example 3.15\n\n')

V=250
R_sh=275,R_a=0.8 //resistance of shunt field and amature
I_L0=3.91 //load current
I_sh=V/R_sh
I_a0= I_L0 - I_sh
constant_losses= V*I_L0 -R_a*(I_a0)^2

//as a generator
P_out=10*10^3
I_L=P_out/V
I_a = I_L + I_sh 
field_cu_loss=R_sh*(I_sh)^2  //field copper loss
arm_cu_loss= R_a*(I_a)^2  //armature copper loss  
eta_gen = 100 *(P_out/(P_out+constant_losses + field_cu_loss+ arm_cu_loss))  //efficiency as generator
printf('Efficiency as a generator = %.2f percent\n',eta_gen)

//as a motor
P_in=10*10^3  //at V=250 
I_L=P_in/V
I_a=I_L - I_sh
field_cu_loss=R_sh*(I_sh)^2  //field copper loss
arm_cu_loss= R_a*(I_a)^2  //armature copper loss  
eta_m = 100 *((P_in-(constant_losses + field_cu_loss+ arm_cu_loss))/(P_in)) //efficiency as motor
printf('Efficiency as a motor = %.2f percent',eta_m)
