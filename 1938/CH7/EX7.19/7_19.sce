clc,clear
printf('Example 7.19\n\n')

V_L=6600,V_ph=V_L/sqrt(3)
Z_s=complex(2,20) //synchronous impedance
theta=(%pi/180) * phasemag(Z_s) //phasemag returns angle in degrees,not radians
P_1=1000*10^3
P_2=1500*10^3
phi_1=acos(0.8)  //leading

I_L1=P_1/(sqrt(3)*V_L*cos(phi_1))
I_a1ph=I_L1
E_R1ph=I_a1ph*abs(Z_s)
E_bph=  sqrt(    V_ph^2 + E_R1ph^ -2*V_ph*E_R1ph*cos(theta+phi_1)  )
I_a2_cosphi_2=P_2/(sqrt(3)*V_L)

//Refer to the phasor diagram and solving for I_y
//404I_y^2 -152399.968 I_y -4543000=0
p=[404 -152399.968 -4543000]
roots(p)
I_y=abs(ans(2)) //becuase root 1 is too high and root is -ve

I_a2=complex(I_a2_cosphi_2,I_y)
phi_2=phasemag(I_a2)
printf('Required power factor is %.3f leading',cosd(phi_2))
