clc,clear
printf('Example 5.10\n\n')

VA=125*10^3
V_L=400,V_ph=V_L/sqrt(3)
I_L=VA/(sqrt(3)*V_L)
I_aph=I_L

I_f=4,I_asc=I_aph/2 //for half load.. refer to graph
V_OC_line=140
V_OC_ph=V_OC_line/sqrt(3)
I_asc_ph=I_asc
Z_s= V_OC_ph/I_asc_ph
R_a=0.1,X_s=sqrt(Z_s^2-R_a^2) //armature resistance and synchronous reactance

phi=acos(0.8)
E_ph = sqrt((V_ph*cos(phi)+I_asc*R_a)^2 +(V_ph*sin(phi)- I_asc*X_s)^2)
regulation=100*(E_ph-V_ph)/V_ph
printf('Voltage regulation at 0.8 pf leading for half load is %.2f percent\n',regulation)
