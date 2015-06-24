clc,clear
printf('Example 7.6\n\n')

V_L=400
output_power=37.3*1000 //Watts on full load
Z_s=complex(0.2,1.6) //synchronous impedance
theta=(%pi/180)*phasemag(Z_s) //phase mag returns the angle in degrees and not raidians
phi=acos(0.9) //leading
V_ph=V_L/sqrt(3)
eta=88 //efficiency in percentage
input_power=100*output_power/eta
I_L=input_power/(sqrt(3)*V_L*cos(phi))
I_aph=I_L
E_Rph=I_aph*abs(Z_s)

E_bph= sqrt( (E_Rph)^2 + (V_ph)^2  -2*E_Rph*V_ph*cos(theta+phi)  )
E_line=sqrt(3)*E_bph

printf('Induced EMF is %.2f V and its line value is %.2f V',E_bph,E_line)
