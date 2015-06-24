clc,clear
printf('Example 7.5\n\n')

//subscript 1 is for industrial load and 2 for synchronous motor
P_1=800 // Active power in KW
phi_1=acos(0.6) //lagging
Q_1=P_1*tan(phi_1)   //reactive power by load 1

output_power=200
eta=91/100 //efficiency of synchronous motor
input_power= output_power/eta
P_2=input_power// active power drawn by synchronous motor
P_T=P_1 + P_2  //combined total load of industry and synchronous motor
phi_T=acos(0.92 )//lagging
Q_T=P_T* tan(phi_T)  //from power triangle
Q_2= Q_T - Q_1  //it turns out to be negative indicating its leading nature
S_2=sqrt( P_2^2 + Q_2^2    )
printf('Desired kVA rating of Synchronous motor  is %.3f kVA',S_2)

phi_2= atan (Q_2/P_2)
printf('\nPower factor of synchronous motor is %.4f LEADING',cos(phi_2))
