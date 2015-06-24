clc,clear
printf('Example 6.32\n\n')

V_L=11*10^3
V_ph=V_L/sqrt(3)
VA=700*10^3
I_FL=VA/(sqrt(3)*V_L)
IX_s=(14/100)*V_ph //product of I and X_s
X_s=IX_s/I_FL
//X_s=complex(0,IX_s/I_FL)
IR_a=(1.5/100)*V_ph //product of I and R_a
R_a=IR_a/I_FL

I=I_FL,phi=acos(0.8)
V=complex(V_ph*cos(phi),V_ph*sin(phi))
E_ph=sqrt(  (V_ph*cos(phi)+IR_a)^2 +(V_ph*sin(phi)+IX_s)^2    )

delta=asin((V_ph*sin(phi)+IX_s)/E_ph)   -phi

Poles=4,f=50
delta_dash_mech=(%pi/180) //phase displacemnt in degree mechanical
delta_dash_elec=delta_dash_mech*(Poles/2)//phase displacemnt in degree electrical

P_SY=abs(V_ph)*abs(E_ph)*cos(delta)*sin(delta_dash_elec)/abs(X_s)   //synchronising power per phase
P_SY_total=3*P_SY  //total synchronising power

ns=120*f/(60*Poles)  //in r.p.s
T_SY=P_SY_total/(2*%pi*ns)   //Synchronising torque 
printf('Synchronising power per phase is %.3f kW\n',P_SY/1000)
printf('Synchronising power is %.3f kW ; ',P_SY/1000)
printf('Total Synchronising power is %.3f kW',P_SY_total/1000)
printf('\nSynchronising torque is %.2f N-m',T_SY)
