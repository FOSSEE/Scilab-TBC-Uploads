clc,clear
printf('Example 6.12\n\n')

V_l=3300
V_ph=V_l/sqrt(3)
VA=3*10^6
I_FL=VA/(V_l*sqrt(3))
IX_s=(20/100)*V_ph //product of I and X_s
X_s=complex(0,IX_s/I_FL) //synchronous reactance
N_s=1000
P=6
f=50

delta_dash_mech=%pi/180 //phase displacement in degree mechanical
//phase displacement in degree electrical
delta_dash_elec=delta_dash_mech*(P/2)  //P/2 is pole pairs(and not poles)

E=V_ph
Z_s=X_s //since R=0
P_SY=abs(E)*abs(V_ph)*delta_dash_elec/abs(Z_s) //Synchronising power per phase
printf('Synchronising power is %.3f kW',10^-3*P_SY)
P_SY_total=3*P_SY //Total synchronising power
printf('\n3 phase synchronising power is %.3f kW',10^-3*P_SY_total)

N_s=120*f/P //in rpm
n_s=(N_s)/60 //in rps
T_SY=P_SY_total/(2*%pi*n_s)
printf('\nSynchronising torque is %.0f N-m',T_SY)
