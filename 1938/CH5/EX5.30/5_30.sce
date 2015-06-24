clc,clear
printf('Example 5.30\n\n')

V_L=2300   ,  V_ph= V_L/sqrt(3)
f=50,R_a=0.2 //armature resistance
I_sc=150
V_OC_line=780   , V_OC_ph=V_OC_line/sqrt(3)

Z_s= V_OC_ph/I_sc
X_s =  sqrt(Z_s^2 - R_a^2)
I_aph=25 , I_aFL=I_aph

//part(i)
phi= acos(0.8)  //lag
E_ph = sqrt((V_ph*cos(phi)+I_aph*R_a)^2 +(V_ph*sin(phi)+ I_aph*X_s)^2)
regulation=100*(E_ph-V_ph)/V_ph
printf('Voltage regulation at 0.8 pf lagging is %.3f percent\n',regulation)

//part(ii)
phi2= acos(0.8)  //lead
E_ph2 = sqrt((V_ph*cos(phi2)+I_aph*R_a)^2 +(V_ph*sin(phi2)- I_aph*X_s)^2 )
regulation2=100*(E_ph2-V_ph)/V_ph
printf('Voltage regulation at 0.8 pf leading is %.3f percent',regulation2)
