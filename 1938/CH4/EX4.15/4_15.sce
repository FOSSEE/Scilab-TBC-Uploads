clc,clear
printf('Example 4.15\n\n')

Pole=10
Slots=90
E_l=11000
f=50
phi=0.15 //flux per pole in weber
n=Slots/Pole //slots per pole
m=n/3 //slots per pole per phase
beeta=180/n //slot angle
 
K_d=sind(m*beeta/2) /(m*sind(beeta/2)) //distribution factor
K_c=1 //coil span factor

E_ph=E_l/sqrt(3)
T_ph=floor( E_ph/(4.44*K_c*K_d*phi*f)  )
//T_ph should necessarily be an integer

Z_ph=(T_ph)*2  
printf('Required number of armature conductors is %d',Z_ph)
