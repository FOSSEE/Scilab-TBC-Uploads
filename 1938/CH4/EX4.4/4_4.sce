clc,clear
printf('Example 4.4\n\n')

N_s=250  //Synchronous speed in r.p.m
f=50     //Frequency of generated e.m.f in hertz
Slots=216
phi=30*10^-3 //flux per pole in weber

Pole=120*f/N_s
n=Slots/Pole   //Slots per Pole
m=n/3          //Slots per Pole per Phase
beeta=180/n     //Slot angle in degree

K_d=sind(m*beeta/2)/(m*sind(beeta/2))   //distribution factor
K_c=1 //Coil Span Factor for full pitch coils=1

Z=Slots*5   //Z is total no of conductors
Z_ph=Z/3    //Conductors Per Phase
T_ph=Z_ph/2 //Turns per phase
E_ph=4.44*K_c*K_d*f*phi*T_ph //induced emf
E_line=E_ph*sqrt(3)

printf('Induced e.m.f across the Terminals is %.2f V',E_line)
