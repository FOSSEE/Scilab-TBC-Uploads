clc,clear
printf('Example 5.8\n\n')

P=1200*10^3
V_line=12000
R_a=2,X_s=35//armature resistance and synchronous reactance
phi=acos(0.8)


I_L=P/(sqrt(3)*V_line*cos(phi))
I_a=I_L
V_ph=V_line/sqrt(3)
E_ph=sqrt((V_ph*cos(phi)+I_a*R_a)^2+(V_ph*sin(phi)+I_a*X_s)^2)
regulation=100*(E_ph-V_ph)/V_ph

printf('Regulation at 0.8 lag power factor is %.2f percent',regulation)
