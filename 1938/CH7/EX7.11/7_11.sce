clc,clear
printf('Example 7.11\n\n')

P=8, f=50 //Pole and frequency
N_s=120*f/P //synchronous speed
V_L=6.6*10^3 , V_ph=V_L/sqrt(3)
Z_s=complex(0.66,6.6) //synchronous impedance
theta=(%pi/180)*phasemag(Z_s) //phasemag returns angle in degree , not radians
E_bph=4500
input_power=2500*10^3
I_a_cosphi=input_power/(sqrt(3)*V_L)   //Its product of I_a and cos(phi);I_a=I_l for star conneted load

//applying cosine rule to triangle ABC from phasor diagram and solve 
//tan(phi)^2 + 5.2252 tan(phi)-2.2432=0
p=[1 5.2252 -2.2432]
tan_phi=roots(p)
phi=atan(tan_phi(2))
pf=cos(phi)
I_a= I_a_cosphi/ cos(phi)

//apply sine rule to triangle ABC
delta=   asin(I_a*abs(Z_s)*sin(theta+phi)/E_bph)
P_m=3*E_bph*I_a*cos(delta+phi)
T_g = P_m/(2*%pi*N_s/60)
printf('(i)Torque developed is %f N-m\n',T_g)
printf('(ii)Input current is %.4f A\n',I_a)
printf('(iii)Power factor is %.4f leading\n',pf)
printf('(iv)Power angle is %.2f degrees ',(180/%pi)*delta)
