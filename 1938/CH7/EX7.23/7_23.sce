clc,clear
printf('Example 7.23\n\n')

output_power=8*10^3
V_L=400,V_ph=V_L/sqrt(3)
R_a=0,X_s=8//armature resistance and syncronous reactance
Z_s=complex(R_a,X_s) //synchronous impedance
theta=(%pi/180)*phasemag(Z_s) //phasemag returns angle in degrees, not radians 
eta=88/100, input_power=output_power/eta

//minimum current occurs at max power factors
phi=acos(1)
I_a_min=input_power/(sqrt(3)*V_L*cos(phi)) //required minimum current 
printf('Minimum current is %.3f A',I_a_min)
E_R= I_a_min * abs(Z_s)
E_bph =   sqrt( E_R^2 + V_ph^2 - 2*E_R*V_ph*cos(phi+theta)  ) 
printf('\nInduced EMF at full-load is %.3f V',E_bph)
