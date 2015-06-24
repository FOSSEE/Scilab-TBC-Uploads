clc,clear
printf('Example 6.19\n\n')

V_L=10*10^3
V_ph=V_L/sqrt(3)
VA=5*10^6
I_FL=VA/(sqrt(3)*V_L) //full-load current
IX_s=(20/100)*V_ph //product of I and X_s
X_s=IX_s/I_FL //synchronous reactance
P=4
delta_dash_mech=1*(%pi/180) //displacement in degree mechanical 
//displacement in degree electrical
delta_dash_elec=delta_dash_mech*(P/2)
E=V_ph  //at no load
P_SY= delta_dash_elec*E^2/X_s  //synchronising power per phase
P_SY_total=P_SY*3  //Total synchronising power

printf('Synchronising power per phase is %.2fkW\nTotal synchronising power is %.2fkW ',P_SY/1000,P_SY_total/1000)
