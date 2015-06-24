clc,clear
printf('Example 7.28\n\n')

V_L=400,V_ph=V_L/sqrt(3)
Z_s=complex(0.5,4)  //synchronous impedance
theta=(%pi/180)*phasemag(Z_s) //phasemag returns angle in degrees ,not radians

I_aph=60
phi=acos(0.866) //leading
power_losses=2*10^3

E_bph =   sqrt( (I_aph*abs(Z_s))^2 + (V_ph)^2 - 2*(I_aph*abs(Z_s))*(V_ph)*cos(phi+theta)  ) 
delta=theta //for P_m_max
P_m_max = (E_bph*V_ph/abs(Z_s))- (E_bph^2/abs(Z_s))*cos(delta)
P_m_max_total= 3 * P_m_max
P_out_max=  P_m_max_total- power_losses
printf('Maximum power output is %.4f kW',P_out_max*10^-3)
