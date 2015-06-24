clc,clear
printf('Example 7.30\n\n')

V_L=400,V_ph=V_L/sqrt(3)
P_out=7.5*735.5
eta=85/100 //efficiency
R_a=0,X_s=10 //armature resistance and synchronous reactance
Z_s=complex(R_a,X_s)//synchronous impedance
theta=(%pi/180)*phasemag(Z_s) //phasemag returns angle in degrees,not radians
P_in=P_out/eta
phi=acos(1) //for mimimum current, power factor is maximum
I_L=P_in/(sqrt(3)*V_L*cos(phi))  , I_aph=I_L
printf('Minimum current is %.3f A at full load condition ',I_L)

E_Rph= I_aph*abs(Z_s)
E_bph =   sqrt( E_Rph^2 + V_ph^2 - 2*E_Rph*V_ph*cos(phi+theta)  ) 
printf('and corresponding EMF is %.4f V',E_bph)
