clc,clear
printf('Example 7.20\n\n')

V_L=2300,V_ph=V_L/sqrt(3)
I_L=200, I_a=I_L
Z_s=complex(0.2,2.2) //synchronous impedance
theta=(%pi/180)*phasemag(Z_s) //phasemag returns angle in degrees, not radians
phi=acos(0.5)

E_Rph=I_a*abs(Z_s)
E_bph =   sqrt( E_Rph^2 + V_ph^2 - 2*E_Rph*V_ph*cos(phi+theta)  ) 

printf('Generated EMF per phase is %.3f V',E_bph)
