clc,clear
printf('Example 4.7\n\n')

Ns=250 //Synchronous speed in rpm
f=50
Slots=288
E_line=6600
Pole=120*f/Ns  
n=Slots/Pole  //slots per pole
m=n/3 //slots per pole per phase
beeta=180/n //slot angle
conductors_per_slot=32   //16 conductors per coil-side  *2 coil-sides per slot

K_d=sind(m*beeta/2) /(m*sind(beeta/2)) //distribution factor
alpha=2*beeta// angle of short pitch
K_c=cosd(alpha/2)  //coil span factor
Z = Slots*conductors_per_slot  //total conductors
Z_ph=Z/3 //Conductors per phase
T_ph=Z_ph/2 //turns per phase

E_ph=E_line/sqrt(3)
phi=E_ph/(4.44*K_c*K_d*f*T_ph)           //Because E_ph=4.44 *K_c *K_d *phi *f *T_ph
printf('Flux per pole is %.0f mWb ',phi*1000)
