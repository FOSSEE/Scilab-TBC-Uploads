clc,clear
printf('Example 3.11\n\n')

V=250
R_sh=166.67,R_a=0.15 //resistance of shunt field winding and armature
N_0=1280 //in rpm
I_L1=67 //current drawn on full load
I_sh= V/ R_sh
I_a1=I_L1 - I_sh
E_b1=V-I_a1*R_a

//on no load
I_L0=6.5
I_a0= I_L0 - I_sh
E_b0=V-I_a0*R_a

//part (i)
//using speed equation  N is proportional to E_b
N_1=N_0*(E_b1/E_b0)
printf('(i)Full load speed is %.3f r.p.m\n',N_1)

//part (ii)
speed_regulation=100*((N_0-N_1)/N_1)
printf('(ii)Speed regulation is %.2f percent \n',speed_regulation)

//part (iii)
stray_losses = E_b0*I_a0  //mechanical power developed on no load
power_developed_FL= E_b1*I_a1 
shaft_output_FL= power_developed_FL - stray_losses 
hp_rating= shaft_output_FL/746 //in horse power
printf('(iii)H.P rating of the machine Is %.2f H.P\n',hp_rating)

//part (iv)
power_input=V*I_L1
eta=100*(shaft_output_FL/power_input)  //efficiency at full load
printf('(iv)Efficiency at full load is %.2f percent\n',eta)
