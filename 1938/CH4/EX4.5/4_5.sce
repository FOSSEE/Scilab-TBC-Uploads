clc,clear
printf('Example 4.5\n\n')

Pole=16
N_s=375 //synchronous speed in rpm
Slots=144
E_line=2.657*10^3 //line value of emf across terminals
f=Pole*N_s/120 //frequency

K_c=1  //assuming full pitch winding,Coil span Factor=1
n=Slots/Pole //slots per pole
m=n/3 //slots per pole per phase

beeta=180/n
K_d=sind(m*beeta/2) /(m*sind(beeta/2)) //Distribution Fcator
conductors_per_slot=10
Z=Slots*conductors_per_slot  //total conductors

Z_ph=Z/3  //number of conductors per phase
T_ph=Z_ph/2 //no of turns per phase
E_ph=E_line/sqrt(3) //phase value of emf across terminals

phi=E_ph/(4.44*K_c*K_d*f*T_ph)     //E_ph=4.44*K_c*K_d*f*phi*T_ph
printf('Frequency of Induced e.m.f is %.0fHz\nFlux per Pole is %.0f mWb',f,phi*1000)
