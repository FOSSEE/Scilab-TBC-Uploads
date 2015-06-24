clc,clear
printf('Example 5.2\n\n')

VA=1200*10^3
V_L=6600
R_a=0.25 //armature resistance per phase
X_s=5//synchronous reactance per phase

I_L=VA/(sqrt(3)*V_L)
I_aph=I_L //for star connected load
I_a=I_L
V_ph=V_L/sqrt(3)

//Part(i)
phi1=acos(0.8)//and lagging
E_ph1= sqrt(  (V_ph*cos(phi1)+I_a*R_a)^2+(V_ph*sin(phi1)+I_a*X_s)^2   )
regulation=100*(E_ph1-V_ph)/V_ph  //percentage regulation
printf('(i)Regulation at 0.8 lagging pf is %.2f percent',regulation)
//Part(ii)
phi2=acos(0.8)//and leading
E_ph2= sqrt(  (V_ph*cos(phi2)+I_a*R_a)^2+(V_ph*sin(phi2)-I_a*X_s)^2   )
regulation2=100*(E_ph2-V_ph)/V_ph //percentage regulation
printf('\n(ii)Regulation at 0.8 leading pf is %.2f percent',regulation2)
