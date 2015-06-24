clc,clear
printf('Example 6.20\n\n')

Power_total=1.414 //per unit
V_L=1 //per unit
phi_t=acos(0.707)
I_L_T=Power_total/(sqrt(3)*V_L*cos(phi_t))  //Total current
//Current supplied by each alternator
I_1=I_L_T/2
I_2=I_1
V_ph=V_L/sqrt(3)

phi=acos(0.707)
R_a=0,X_s=0.6 //resistacne and synchronous reactance
E_ph=sqrt(  (V_ph*cos(phi)+ I_1*R_a)^2 + (V_ph*sin(phi)+I_1*X_s)^2          )
delta= atan((I_1*X_s+V_ph*sin(phi)) / (V_ph*cos(phi))) - phi    //power angle

printf('EMF is %.4f p.u. and power angle is %.2f degrees ',E_ph,delta*(180/%pi))
printf('\n\nFollowing assumptions were made :\n')
printf('1.Terminal or bus bar voltage at ppoint of connection is constant\n')
printf('2.The alternators are identical and are initially equally excited\n')
printf('3.The power supplied by prime movers is adjusted so that each machine carries half the load represented by external impedance Z=R+ j 2pifL , where R and L are constant\n')
printf('4.The stator resistance is negligible')
