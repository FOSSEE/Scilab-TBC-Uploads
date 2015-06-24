clc,clear
printf('Example 6.31\n\n')

V_L=3.3*10^3
V_ph=V_L/sqrt(3)
VA=3*10^6
I_FL=VA/(sqrt(3)*V_L)
IX_s=(20/100)*V_ph //product of I and X_s
X_s=complex(0,IX_s/I_FL)
N_s=1000 //in r.p.m
Poles=6,f=50

delta_dash_mech=(%pi/180) //displacement in degree mechanical
//displacement in degree electrical 
delta_dash_elec=delta_dash_mech*(Poles/2)

//E=V as the alternator is on no-load and X_s=Z_s
P_SY=abs(V_ph)^2*(delta_dash_elec)/abs(X_s)   //synchronising power per phase
P_SY_total=3*P_SY  //total synchronising power

ns=120*f/(60*Poles)  //in r.p.s
T_SY=P_SY_total/(2*%pi*ns)   //Synchronising torque 
printf('Synchronising power per phase is %.3f kW\n',P_SY/1000)
printf('Total Synchronising power is %.3f kW',P_SY_total/1000)
printf('\nSynchronising torque is %.0f N-m',T_SY)
