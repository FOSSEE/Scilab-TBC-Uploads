clc,clear
printf('Example 5.13\n\n')

V_ph=2000
R_a=0.8
I_sc=100
V_OC=500
I_f=2.5
Z_s=V_OC/I_sc
X_s= sqrt(Z_s^2 - R_a^2 )
I_aFL=100,I_a=I_aFL

//part(i)
phi=acos(1)
E_ph = sqrt((V_ph*cos(phi)+I_a*R_a)^2 +(V_ph*sin(phi)+ I_a*X_s)^2)
regulation=100*(E_ph-V_ph)/V_ph
printf('(i)Voltage regulation is %.2f percent\n',regulation)

//part(ii)
phi2=acos(0.8)
E_ph2 = sqrt((V_ph*cos(phi2)+I_a*R_a)^2 +(V_ph*sin(phi2)- I_a*X_s)^2)
regulation2=100*(E_ph2-V_ph)/V_ph
printf('(ii)Voltage regulation is %.2f percent\n',regulation2)

//part(iii)
phi3=acos(0.71)
E_ph3 = sqrt((V_ph*cos(phi3)+I_a*R_a)^2 +(V_ph*sin(phi3)+ I_a*X_s)^2)
regulation3=100*(E_ph3-V_ph)/V_ph
printf('(iii)Voltage regulation is %.2f percent\n',regulation3)
