clc,clear
printf('Example 7.16\n\n')

V_L=3300
V_ph=V_L/sqrt(3)
E_bph=V_ph
Z_s=complex(0.5,5) //synchronous impedance
theta=(%pi/180)*phasemag(Z_s) //phasemag returns angle in degrees, not radians
P=8,f=50 //pole and frequency
delta_mech=3 //mechanical angle in degrees by which rotor is behind
delta_elec=(P/2)*delta_mech  //delta mech converted to electrical degrees
E_Rph=sqrt(  E_bph^2 + V_ph^2 -2*E_bph*V_ph*cosd(delta_elec) ) 
I_aph= E_Rph/abs(Z_s)

//from the phasor diagram 
phi=theta- asin( sind(delta_elec)*E_bph/E_Rph )
pf=cos(phi)
printf('power factor of the motor is %.5f lagging',pf)
