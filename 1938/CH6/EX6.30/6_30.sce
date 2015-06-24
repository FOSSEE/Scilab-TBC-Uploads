clc,clear
printf('Example 6.30\n\n')

V_L=3.3*10^3
V_ph=V_L/sqrt(3)
VA=3*10^6
I_FL=VA/(sqrt(3)*V_L)
IX_s=(25/100)*V_ph //product of I and X_s
X_s=complex(0,IX_s/I_FL)
N_s=1000 //in r.p.m

Poles=6,f=50
delta_dash_mech=(%pi/180) //displacement in degree mechanical
//displacement in degree electrical
delta_dash_elec=delta_dash_mech*(Poles/2)

I=I_FL,phi=acos(0.8)
V=complex(V_ph*cos(phi),V_ph*sin(phi))
E= V+ I*X_s

delta=(%pi/180)*phasemag(E)-phi   //E leads I by (%pi/180)*phasemag(E) and V leads I by phi radians 
P_SY=abs(E)*abs(V_ph)*cos(delta)*sin(delta_dash_elec)/abs(X_s)   //synchronising power per phase 
P_SY_total=3*P_SY  //total synchronising power

ns=120*f/(60*Poles)  //in r.p.m
T_SY=P_SY_total/(2*%pi*ns)   //Synchronising torque 
printf('Synchronising power per phase is %.3f kW\n',P_SY/1000)
printf('Synchronising torque is %.0f N-m',T_SY)
printf('\n\nAnswer mismatches due to improper approximation')
