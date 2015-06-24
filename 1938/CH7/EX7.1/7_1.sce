clc,clear
printf('Example 7.1\n\n')

V_l=400
R_a=0.2,X_s=2  //armature resistance and synchronous reactance
I_L=25
I_aph=I_L
V_ph=V_l/sqrt(3)
Z_s=complex(R_a,X_s) //synchronous impedance
theta=(%pi/180)*phasemag(Z_s) //Phasemag returns the angle in degrees not radians
E_Rph=I_aph*abs(Z_s)

//case 1
phi=acos(0.8) //lagging
E_bph= sqrt( (E_Rph)^2 + (V_ph)^2  -2*E_Rph*V_ph*cos(theta-phi)  )
printf('\n(i)Back EMF induced with 0.8 lagging pf is %.3f V\n',E_bph)

//case 2
phi=acos(0.9) //leading
E_bph= sqrt( (E_Rph)^2 + (V_ph)^2  -2*E_Rph*V_ph*cos(theta+phi)  )
printf('(ii)Back EMF induced with 0.8 lagging pf is %.3f V\n',E_bph)

//case 3
phi=acos(1)
E_bph= sqrt( (E_Rph)^2 + (V_ph)^2  -2*E_Rph*V_ph*cos(theta)  )
printf('(iii)Back EMF induced with 0.8 lagging pf is %.3f V',E_bph)
