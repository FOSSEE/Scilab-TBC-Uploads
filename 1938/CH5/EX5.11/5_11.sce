clc,clear
printf('Example 5.11\n\n')

V_OC_line=575,   V_OC_ph=V_OC_line/sqrt(3)
I_asc_line=75
I_asc_ph  =I_asc_line 
I_aph=I_asc_ph
I_L=I_aph

Z_s= V_OC_ph/I_asc_ph
R_a=2.16/2
X_s =  sqrt(Z_s^2 - R_a^2)

//on full load
E_ph=6100
phi=acos(0.8) //leading

//using E_ph = sqrt((V_ph*cos(phi)+I_a*R_a)^2 +(V_ph*sin(phi)- I_a*X_s)^2)
p=[1 -256.68 -3.71*10^7]
roots(p)
V_ph=ans(1) //second root is ignored as its -ve
V_L=V_ph*sqrt(3)
printf('Rated terminal voltage between the lines is %.3f V \n',V_L)
VA_rating=sqrt(3)*V_L*I_L
printf('kVA rating of the alternator is %.2f kVA',VA_rating*10^-3)
