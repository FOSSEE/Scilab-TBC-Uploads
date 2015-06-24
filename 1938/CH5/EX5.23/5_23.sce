clc,clear
printf('Example 5.23\n\n')

V_L=3300, V_ph=V_L/sqrt(3)
I_a=100
I_f=5
V_OC_line=900 ,V_OC_ph=V_OC_line/sqrt(3) 
R_a=0.8 //armature resistance
I_aph=I_a
Z_s=V_OC_ph/I_aph
X_s=sqrt(Z_s^2-R_a^2) //synchronous reactance

//Part(i)
phi1=acos(0.8) //and lagging
E_ph1=sqrt((V_ph*cos(phi1)+I_a*R_a)^2+(V_ph*sin(phi1)+I_a*X_s)^2)
regulation1=100*(E_ph1-V_ph)/V_ph
printf('Regulation at 0.8 lagging is %.2f percent\n',regulation1)

//Part(ii)
phi2=acos(0.8)  //and leading
E_ph2=sqrt((V_ph*cos(phi2)+I_a*R_a)^2+(V_ph*sin(phi2)-I_a*X_s)^2)
regulation2=100*(E_ph2-V_ph)/V_ph
printf('Regulation at 0.8 leading pf is %.2f percent\n',regulation2)
