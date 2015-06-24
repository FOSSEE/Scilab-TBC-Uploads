clc,clear
printf('Example 5.21\n\n')

V_ph=2000
R_a=0.8
I_sc=100,I_a=I_sc
V_OC=500
I_f=2.5
Z_s=V_OC/I_sc

X_s=sqrt(Z_s^2- R_a^2)
I_a_FL=100

//Part(i)
phi1=acos(1) //and lagging
E_ph1=sqrt((V_ph*cos(phi1)+I_a*R_a)^2+(V_ph*sin(phi1)+I_a*X_s)^2)
regulation1=100*(E_ph1-V_ph)/V_ph
printf('Regulation at upf is %.2f percent\n',regulation1)

//Part(ii)
phi2=acos(0.8) 
E_ph2=sqrt((V_ph*cos(phi2)+I_a*R_a)^2+(V_ph*sin(phi2)-I_a*X_s)^2)
regulation2=100*(E_ph2-V_ph)/V_ph
printf('Regulation at 0.8 leading pf is %.2f percent\n',regulation2)

//Part(iii)
phi3=acos(0.71) 
E_ph3=sqrt((V_ph*cos(phi3)+I_a*R_a)^2+(V_ph*sin(phi3)+I_a*X_s)^2)
regulation3=100*(E_ph3-V_ph)/V_ph
printf('Regulation at 0.71 lagging pf is %.2f percent\n',regulation3)
