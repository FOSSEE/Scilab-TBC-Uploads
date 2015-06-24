clc,clear
printf('Example 7.3\n\n')

V_L=6600
P_out=500*10^3
eta=83/100 //efficiency
R_a=0.3,X_s=3.2 //armature resistance and synchronous reactance
Z_s=complex(R_a,X_s)  //synchronous impedance
theta=(%pi/180)*phasemag(Z_s)  //phasemag returns the angle in degrees not radians
phi=acos(0.8) //leading
V_ph=V_L/sqrt(3)
P_in=P_out/eta

I_L=   P_in/ (sqrt(3) * V_L *  cos(phi) )
// because P_in=sqrt(3) * V_L * I_L * cos(phi)
I_aph=I_L
E_Rph=I_aph*abs(Z_s)
E_bph= sqrt( (E_Rph)^2 + (V_ph)^2  -2*E_Rph*V_ph*cos(theta+phi)  )
printf('(i) Generated EmF on full loaad is %.2f V\n',E_bph)

delta= asind(  (E_Rph/E_bph)*sin(theta+phi)  )
//This is obtained after applying sune rule to triangle OAB from thre phasor diagram
printf('(ii) load angle is %.2f degrees',delta)
