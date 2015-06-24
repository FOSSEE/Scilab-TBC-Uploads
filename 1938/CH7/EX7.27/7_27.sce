clc,clear
printf('Example 7.27\n\n')

I_1=35
phi_1=acos(0.8)
V_L=440
S_1=sqrt(3)*I_1*V_L /1000 //in kVA

P_1=S_1*cos(phi_1)
Q_1=S_1*sin(phi_1)

P_out=12 //motor load
eta_motor=85/100
P_2=P_out/eta_motor

P_T=P_1 + P_2
phi_T=acos(1)
Q_T=P_T * tan(phi_T)


Q_2=Q_T - Q_1  //kVA supplied by motor
//negative sign of Q_2 indicates its leading nature
phi_2= atan(abs(Q_2)/P_2)
S_2=P_2/cos(phi_2)

printf('Power factor when motor supplies 12kW load is %.4f leading',cos(phi_2))
printf('\nkVA input to the motor is %.3f kVA',S_2)
