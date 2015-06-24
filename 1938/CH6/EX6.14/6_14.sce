clc,clear
printf('Example 6.14\n\n')

V_l=9*10^3
V_ph=V_l/sqrt(3)
VA=5.5*10^6
I_FL=VA/(V_l*sqrt(3))
IX_s=(25/100)*V_ph //product of I and X_s
X_s=complex(0,IX_s/I_FL) //synchronous reactance
N_s=1500 //in rpm
n_s=N_s/60 //in rps
f=50,P=120*f/N_s //frequency and pole

delta_dash_mech=%pi/180 //displacemnt in degree mechanical 
//displacemnt in degree electrical
delta_dash_elec=delta_dash_mech*(P/2)  //P/2 is pole pairs(and not poles)

E=V_ph
P_SY=abs(E)*abs(V_ph)*delta_dash_elec/abs(X_s) //Synchronising power per phase
P_SY_total=3*P_SY //Total synchronising power

T_SY=P_SY_total/(2*%pi*n_s)
printf('\nSynchronising torque is %.2f N-m',T_SY)
printf('\nAnswer mismatches due to approximation')
