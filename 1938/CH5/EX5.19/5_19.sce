clc,clear
printf('Example 5.19\n\n')

VA=2000*1000
V_L=11000,V_ph=V_L/sqrt(3)
R_a=0.3,X_s=5 //armature resistance and synchronous reactance

//case (i)
phi=acos(0.8) //lagging
I_L=VA/(sqrt(3)*V_L)  , I_a=I_L
E_ph = sqrt((V_ph*cos(phi)+I_a*R_a)^2 +(V_ph*sin(phi)+ I_a*X_s)^2)

//Using E_ph = sqrt((V_ph*cos(phi)+I_aph*R_a)^2 +(V_ph*sin(phi)+ I_aph*X_s)^2)
//we get  V_ph^2 -579.4455 V_ph -44653301.91=0
p=[1 -579.4455 -44653301.91]
roots(p)
V_ph=ans(1) //second root is ignored as its -ve
printf('Terminal voltage is %.4f V',V_ph)
