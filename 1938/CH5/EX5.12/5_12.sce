clc,clear
printf('Example 5.12\n\n')

V_L=6600, V_ph=V_L/sqrt(3)
VA=1500*10^3
I_L=VA/(sqrt(3)*V_L)
I_aph=I_L

R_a=0.5, X_s=5//armature resistance and synchronous reactance
phi=acos(0.8)
E_ph = sqrt((V_ph*cos(phi)+I_aph*R_a)^2 +(V_ph*sin(phi)+ I_aph*X_s)^2)
printf('Induced EMF per phase is %f V\n',E_ph)

//full load 
phi=acos(1)
//using E_ph = sqrt((V_ph*cos(phi)+I_a*R_a)^2 +(V_ph*sin(phi)- I_a*X_s)^2)
p=[1 131.215 -1.791*10^7]
roots(p)
V_ph=ans(2) //first root is ignored as it is -ve
printf('Terminal voltage per phase is %f V',V_ph)
