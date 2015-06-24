clc,clear
printf('Example 2.17\n\n')

V=250
R_a=0.15 , R_sh=167.67 //armature and shunt field resistance
N_0=1280 //speed at no load

//full load
I_L1 = 67  //current drawn on full load
I_sh = V / R_sh  //as shunt motor
I_a1= I_L1- I_sh
E_b1= V - I_a1*R_a

//on no load
I_L0=6.5
I_a0 = I_L0 - I_sh
E_b0 = V - I_a0*R_a

//part(i) USING SPEED EQUATION
//N (prop.) E_b/phi (prop.)E_b   //as phi is constant
N_1 = N_0 * (E_b1 / E_b0)
printf('(i)Full load speed = %.3f r.p.m\n',N_1)

//part(ii)
speed_regulation = 100* ((N_0-N_1)/N_1)
//N_1 is full load speed and N_0=No load speed  
printf('(ii)Speed regulation = %.2f percent \n',speed_regulation )

//part(iii)
shaft_output_FL = E_b1*I_a1 - E_b0*I_a0  //full load power developed - stray losses
hp_rating = shaft_output_FL /746
printf('(iii)HP rating of machine = %.2f h.p\n',hp_rating)

//part(iv)
power_input= V*I_L1
eta= 100*(shaft_output_FL/power_input)  //full load efficiency
printf('(iv)Full load efficiency = %.2f percent',eta)
