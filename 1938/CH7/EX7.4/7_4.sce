clc,clear
printf('Example 7.4\n\n')

V_L=500,V_ph=V_L/sqrt(3)
phi=acos(0.9)  //lagging
output_power=17*10^3
R_a=0.8 //armaature reactance
mechanical_losses=1300 //mechanical losses is W
P_m=output_power+mechanical_losses   //gross mechanical power developed

//  P_m= input_power - stator losses
//  input_power= 3* V_ph * I_aph * cos(phi)
//  Stator losses= 3*I_aph^2*R_a
// solving above equations we get 2.4 I_a^2 - 779/.4225*I_a + 18300 = 0
I_a_eqn=[2.4 -779.4225 18300]
I_a_roots=roots(I_a_eqn)
I_a=I_a_roots(2)  //neglecting higher value
I_aph=I_a
printf('Current drawn by the motor is %.3f A\n',I_a)

input_power= 3* V_ph * I_aph * cos(phi)
eta=100*output_power/input_power
printf('Full load efficiency is %.2f percent',eta)
