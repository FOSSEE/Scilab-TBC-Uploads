clc,clear
printf('Example 7.12\n\n')

input_power=15*10^3
V_L=400,V_ph=V_L/sqrt(3)
E_b=480,E_bph=E_b/sqrt(3)
Z_s=complex(1,5) //synchronous impedance
theta=(%pi/180)*phasemag(Z_s) //phasemag returns angle in degree , not radians

I_a_cosphi=input_power/(sqrt(3)*V_L)  //product of I_a & cos(phi)
//Applying cosine rule to triangle OAB and solving
//tan(phi)^2+ 4.101*tan(phi)-1.7499=0
p=[1,4.101,-1.7449]
tan_phi=roots(p)
phi=atan(tan_phi(2))  //ignoring negative vaule
I_a= I_a_cosphi/ cos(phi)

//applying sine rule to Triangle OAB
delta=asin( I_a*abs(Z_s)* sin(theta+phi)/E_bph )
printf('Load angle is %.1f degrees',delta*(180/%pi))
printf('\nArmature current is %.4f A',I_a)
printf('\nPower factor is %.3f leading',cos(phi))
