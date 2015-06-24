clc,clear
printf('Example 7.9\n\n')

V_L=500
R_a=0.03,X_s=0.3 //armature reactance and synchronous reactance
Z_s=complex(R_a,X_s)//synchronous impedance
theta=(%pi/180)*phasemag(Z_s) //phasemag returns angle in degrees,not radians
phi=acos(0.8)
eta=93/100
output_power=100*746
input_power=output_power/eta
I_L=input_power/(sqrt(3)*V_L*cos(phi))
I_aph=I_L
E_Rph=I_aph*abs(Z_s)
//from the phasor diagram
E_bph =   sqrt( E_Rph^2 + (V_L/sqrt(3))^2 - 2*E_Rph*(V_L/sqrt(3))*cos(phi+theta)  ) 

cu_losses=3*(I_aph)^2*R_a //total copper losses
P_m= input_power - cu_losses  //total mechanical power developed

printf('EMF developed per phase is %.4f V \nTotal mechanical power developed is %.1f watts',E_bph,P_m)
