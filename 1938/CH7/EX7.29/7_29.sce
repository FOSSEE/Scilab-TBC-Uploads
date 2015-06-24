clc,clear
printf('Example 7.29\n\n')

V_L=6.6*10^3, V_ph=V_L/sqrt(3)
I_L=50,I_aph=I_L
Z_s=complex(1.5,8) //synchronous impedance
theta=(%pi/180)*phasemag(Z_s) //phasemag returns angle in degrees,not radians
E_Rph=I_aph*abs(Z_s)

//part(i)
phi=acos(0.8)
P_in= sqrt(3)*V_L*I_L*cos(phi)   //for both lag and lead, supplied power will be the same
printf('(i)Power supplied to the motor is %.3f kW\n',P_in*10^-3)
//part(ii)
E_bph_lag =   sqrt( E_Rph^2 + V_ph^2 - 2*E_Rph*V_ph*cos(theta-phi)  )  //for lagging power factor
//Note that E_bph_lag > V_ph
printf('(ii)Induced EMF for 0.8 power factor lag is %.3f V\n',E_bph_lag)
E_bph_lead =   sqrt( E_Rph^2 + V_ph^2 - 2*E_Rph*V_ph*cos(theta+phi)  )  //for leading power factor
//Note that E_bph_lead < V_ph
printf('    Induced EMF for 0.8 power factor lead is %.3f V',E_bph_lead)
