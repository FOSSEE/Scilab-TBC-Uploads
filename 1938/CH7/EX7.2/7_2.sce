clc,clear
printf('Example 7.2\n\n')

V_l=500
R_a=0.4,X_s=4 //armature resistance and synchronous reactance
Z_s=complex(R_a,X_s)//synchronous impedance
theta=(%pi/180)*phasemag(Z_s)//phasemag returns angle in degrees,not radians
V_ph=V_l/sqrt(3)
I_l=50
I_aph=I_l
E_Rph=I_aph*abs(Z_s)

//case 1
E_bline=600
E_bph=E_bline/sqrt(3)
phi=acos( (-E_bph^2 + E_Rph^2 + V_ph^2 )/(2*E_Rph*V_ph) ) -theta    //leading
//because E_bph= sqrt( (E_Rph)^2 + (V_ph)^2  -2*E_Rph*V_ph*cos(theta+phi)  )
printf('(i)power factor is %.4f leading\n',cos(phi))

//case 2
E_bline=380
E_bph=E_bline/sqrt(3)
phi= theta-acos( (-E_bph^2 + E_Rph^2 + V_ph^2 )/(2*E_Rph*V_ph) )     //leading
//because E_bph= sqrt( (E_Rph)^2 + (V_ph)^2  -2*E_Rph*V_ph*cos(theta-phi)
printf('(ii)power factor is %.4f lagging\n',cos(phi))
