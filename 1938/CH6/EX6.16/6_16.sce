clc,clear
printf('Example 6.16\n\n')

E=11*10^3/sqrt(3)
I_sc=1000,Pole=2,f=50
delta_dash_mech=1*%pi/180 //displacemnt in degree mechanical 
//displacemnt in degree electrical 
delta_dash_elec=delta_dash_mech*(Pole/2)
P_SY=E*I_sc*delta_dash_mech //synchronising power per phase
P_SY_total=P_SY*3 //total synchronising power

ns=120*f/(60*Pole)  //in r.p.s
T_SY=P_SY_total/(2*%pi*ns)   //Synchronising torque 

printf('Synchronising power is %.2f kW\n',P_SY_total/1000)
printf('Synchronising torque is %.2f N-m',T_SY)
