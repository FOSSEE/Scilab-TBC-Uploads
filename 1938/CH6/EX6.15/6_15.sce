clc,clear
printf('Example 6.15\n\n')

V_L=6*10^3
V_ph=V_L/sqrt(3)
VA=2000*10^3
I_FL=VA/(sqrt(3)*V_L)  ,I=I_FL

X_s=1.2,R_a=0.01 //both per unit
IR_a=(1/100)*V_ph //product of I and R_a
R_a=IR_a/I_FL
IX_s=(120/100)*V_ph //product of I and X_s
//IX_s=(12/100)*V_ph   // this is the mistake made in the textbook
X_s=IX_s/I_FL

//at full load and 0.8 pf
phi=acos(0.8)
//V_ph=complex(V_ph*cos(phi),V_ph*sin(phi))  //just introduced the angle
E_ph=sqrt(    (abs(V_ph)*cos(phi)+ IR_a)^2+   (abs(V_ph)*sin(phi)+ IX_s)^2     )
Poles=8,f=50

delta=asin( (abs(V_ph)*sin(phi)+IX_s)/E_ph)  -phi
delta_dash_mech=(%pi/180) //displacemnt in degree mechanical 
//displacemnt in degree electrical
delta_dash_elec=delta_dash_mech*(Poles/2)
P_SY=abs(E_ph)*abs(V_ph)*cos(delta)*sin(delta_dash_elec)/X_s   //synchronising power per phase
P_SY_total=3*P_SY  //total synchronising power

ns=120*f/(60*Poles)  //in r.p.s
T_SY=P_SY_total/(2*%pi*ns)   //Synchronising torque 

printf('Synchronising power is %.2f kW\n',P_SY_total/1000)
printf('Synchronising torque is %.2f N-m',T_SY)

printf('\n\nNote that answer obtained doesnt match with textbook due to the following reasons: \n(i)IX_s is considered wrong in textbook.\nIt should have been 4156.92(instead of 415.692)  \nTo verify this use commented statement of IX_s (line 13)and notice that it matches with textbook ans then' )
