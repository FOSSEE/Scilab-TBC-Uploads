clc,clear
printf('Example 6.13\n\n')

V_L=11*10^3
V_ph=V_L/sqrt(3)
VA=700*10^3
I_FL=VA/(sqrt(3)*V_L) //full load current
IR_a=(1.5/100)*V_ph //product of I and R_a
R_a=IR_a/I_FL
IX_s=(14/100)*V_ph // product of I and X_s
X_s=IX_s/I_FL //synchronous reactance

//at full load and 0.8 pf
I=I_FL
phi=acos(0.8)
V_ph=complex(V_ph*cos(phi),V_ph*sin(phi))  //just introduced the angle
E_ph=sqrt(    (abs(V_ph)*cos(phi)+ IR_a)^2+   (abs(V_ph)*sin(phi)+ IX_s)^2     )

Poles=4,f=50 //poles and frequency
delta=asin( (abs(V_ph)*sin(phi)+IX_s)/E_ph)  -phi
delta_dash_mech=(%pi/180) //displacement in degree mechanical
//displacement in degree electrical
delta_dash_elec=delta_dash_mech*(Poles/2)
P_SY=abs(E_ph)*abs(V_ph)*cos(delta)*sin(delta_dash_elec)/X_s   //synchronising power per phase 
P_SY_total=3*P_SY  //total synchronising power

ns=120*f/(60*Poles)  //in r.p.s
T_SY=P_SY_total/(2*%pi*ns)   //Synchronising torque 
printf('Synchronising power is %.2fkW\n',P_SY_total/1000)
printf('Synchronising torque is %.2f N-m',T_SY)
