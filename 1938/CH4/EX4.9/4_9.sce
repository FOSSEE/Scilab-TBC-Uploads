clc,clear
printf('Example 4.9\n\n')

Pole=48
n=9 //slots per pole
phi=51.75*10^-3 //flux per pole in weber
Ns=125
f=Ns*Pole/120 //frequency
K_c=1 //due to full pitch winding
m=n/3 //slots per pole per phase
beeta=180/n  //slot angle

K_d=sind(m*beeta/2) /(m*sind(beeta/2))  //distribution factor
conductor_per_slot=4*2 //Each slot has 2 coil sides and each coil side has 4 conductors
Slots=n*Pole
Z=conductor_per_slot*Slots   //total number of conductors
Z_ph=Z/3 //conductors per phase
T_ph=Z_ph/2 //turns per phase
E_ph=4.44 *K_c *K_d *phi *f *T_ph  //induced emf

E_line=(sqrt(3))*E_ph  //due to star connection
printf('Induced e.m.f is %.0f kV ',E_line/1000)
