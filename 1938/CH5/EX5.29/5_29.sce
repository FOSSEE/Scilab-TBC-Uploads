clc,clear
printf('Example 5.29\n\n')

V_L=3300
VA=200*10^3
R_a=0.6, X_s=6//armature resistance and synchronous reactance

I_L=VA/(sqrt(3)*V_L)//VA=sqrt(3)V_L*I_L
I_a=I_L
V_ph=V_L/sqrt(3)
phi=acos(0.8)
E_ph=sqrt((V_ph*cos(phi)+I_a*R_a)^2+(V_ph*sin(phi)+I_a*X_s)^2)

regulation=100*(E_ph-V_ph)/V_ph
printf('Regulation at 0.8 lagging power factor is %.3f percent',regulation)
printf('\n Note :\n Regulation is positive for lagging power factor loads')
