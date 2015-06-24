clc,clear
printf('Example 4.8\n\n')

Ns=1500  //synchronous speed in rpm
Pole=4
Slots=24
conductor_per_slot=8
phi=0.05 //flux per pole in weber
f=Pole*Ns/120 //frequenccy
n=Slots/Pole //slots per pole
m=n  // as number of phases is 1
beeta=180/n  //slot angle

K_d=sind(m*beeta/2) /(m*sind(beeta/2))  //distribution factor

//Full pitch= n =6 slots
//(1/6)th of full pitch =1slot
//angle of short pitch = 1 slot angle
alpha=beeta
K_c=cosd(alpha/2)  //coil span factor

Z=conductor_per_slot*Slots //total conductors
Z_ph=Z // as number of phases is 1
T_ph=Z_ph/2 //turns per phase
E_ph=4.44*K_c*K_d* phi *f *T_ph  //induced emf

printf('Induced e.m.f is %.1f V ',E_ph)
