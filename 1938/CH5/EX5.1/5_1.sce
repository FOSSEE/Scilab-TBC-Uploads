clc,clear
printf('Example 5.1\n\n')

P=1000*10^3 //load power
phi=acosd(0.8) //power factor lagging angle
V_L=11*10^3 //rated terminal voltae
R_a=0.4 //armature resistance per phase
X_s=3//synchronous reactance per phase

I_L=P/(sqrt(3)*V_L*cosd(phi))
I_aph=I_L //for star connected load
I_a=I_L//current through armature
V_ph=V_L/sqrt(3) //rated terminal volatge phase value

E_ph= sqrt(  (V_ph*cosd(phi)+I_a*R_a)^2+(V_ph*sind(phi)+I_a*X_s)^2   )  //emf generated phase value
E_line=E_ph*sqrt(3) //line value of emf generated
regulation=100*(E_ph-V_ph)/V_ph  //pecentage regulation
printf('Line value of e.m.f generated is %.2f kV\nRegulation is %.3f percent',E_line*10^-3,regulation)
