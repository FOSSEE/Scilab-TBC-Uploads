clc,clear
printf('Example 7.13\n\n')

V_L=400,V_ph=V_L/sqrt(3)
E_b=460,E_bph=E_b/sqrt(3)
input_power=3.75*10^3
Z_s=complex(1,8) //synchronous impedance
theta=(%pi/180)*phasemag(Z_s)  //phasemag returns angle in degree , not radians
I_L_cos_phi = input_power/(sqrt(3)*V_L)

//Applying cosine rule to triangle OAB and solving further
//tan(phi)^2 + 458.366*tan(phi) -450.65 =0 
p=[1,458.366,-450.65]
tan_phi=roots(p)
phi=atan(tan_phi(2))  //ignoring negative value
printf('Required power factor is %.4f leading',cos(phi))
I_L=I_L_cos_phi /cos(phi)
printf('\nRequired current is %.4f A',I_L)
