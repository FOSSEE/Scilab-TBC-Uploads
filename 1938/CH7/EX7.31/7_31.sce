clc,clear
printf('Example 7.31\n\n')

V_L=3.3*10^3, V_ph=V_L/sqrt(3), V_t=V_ph
Pole=24,f=50  //Pole and frequency
P=1000*10^3
R_a=0,X_s=3.24 //armature resistance and synchronous reactance
Z_s=complex(R_a,X_s) //synchronous impedance
theta=phasemag(Z_s)*(%pi/180) //phasemag returns angle in degrees,not radians
phi=acos(1)
I_aph=P/(sqrt(3)*V_L*cos(phi))

E_Rph=I_aph*abs(Z_s)
E_bph =  sqrt( E_Rph^2 + V_ph^2 - 2*E_Rph*V_ph*cos(phi+theta)  ) 

P_m_max=3*(E_bph*V_ph/abs(Z_s)) //maximum power that can be delivered
N_s=120*f/Pole //synchronous speed
T_max=P_m_max /(2*%pi*N_s/60) //maximum torque that can be developed
printf('Maximum power and torque the motor can deliver is %.3f kW and %.2f *10^3 Nm respectively',P_m_max*10^-3,T_max/1000)
