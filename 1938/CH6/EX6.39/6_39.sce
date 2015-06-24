clc,clear
printf('Example 6.39\n\n')

f=50
P=12
V_L=6600
V_ph=V_L/sqrt(3)
VA=2000*10^3
I_FL=VA/(sqrt(3)*V_L)

IX_s=(25/100)*V_ph //product of I and X_s
X_s=complex(0,IX_s/I_FL)
N_s=12*f/P //in rpm
delta_dash_mech=(%pi/180) //phase displacemnt in degree mechanical
delta_dash_elec=delta_dash_mech*(P/2) //phase displacemnt in degree electrical

phi=acos(0.8) //lag
I=complex(I_FL*cos(-1*phi),I_FL*sin(-1*phi))
V=V_ph
E=V + I*X_s
delta=phasemag(E)*(%pi/180)
P_SY=abs(E)*abs(V)*cos(delta)*sin(delta_dash_elec)/abs(X_s)
P_SY_total=3*P_SY
printf('\nSynchronising power is %.2f kW',P_SY/1000)
printf('\nTotal synchronising power is %.2f kW',P_SY_total/1000)
