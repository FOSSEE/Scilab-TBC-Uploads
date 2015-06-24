clc,clear
printf('Example 4.19\n\n')

Pole=4
f=50 //frequency
phi=0.12 //flux per pole in weber
m=4  // slot per pole per phase
conductor_per_slot=4
coilspan=150
Ns=120*f/Pole //synchronous speed in rpm
n=m*3  //Slots per pole
beeta=180/n //slot angle
K_d=sind(m*beeta/2) /(m*sind(beeta/2)) // distribution factor
alpha=180-coilspan //angle of short pitch
K_c=cos((%pi/180)*alpha/2) //coil span factor
Z=m*(n*Pole) // Also equal to (conductors/slots)*slots
Z_ph=Z/3 //conductors per phase
T_ph=Z_ph/2 //turns per phase
E_ph=4.44*K_c*K_d*phi*f*T_ph
E_line=sqrt(3)*E_ph
printf('e.m.f generated is %.2f V(phase),%.2f V(line)',E_ph,E_line)
