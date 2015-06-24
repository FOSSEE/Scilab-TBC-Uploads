clc,clear
printf('Example 6.4\n\n')

V_l=10000
V_ph=V_l/sqrt(3)
VA=10*10^6
I_FL=VA/(V_l*sqrt(3)) //Current at full laod
IX_s=(20/100)*V_ph //product of I and X_s

X_s=IX_s/I_FL
N_s=1500
f=50
P=120*f/N_s //poles

delta_dash_mech=%pi/180 //phase displacement in degree mechanical
delta_dash_elec=delta_dash_mech*(P/2)  //P/2 is pole pairs(and not poles)
E=V_ph //since alternator is on no-load
P_SY=delta_dash_elec*E^2/X_s  //Synchronous Power
P_SY_3ph=P_SY*3 //For 3 phases

printf('Synchronising Power of armature is %.3f kW.\nSynchronising Power for 3 phase is %.3f kW',P_SY*10^-3,P_SY_3ph*10^-3)
