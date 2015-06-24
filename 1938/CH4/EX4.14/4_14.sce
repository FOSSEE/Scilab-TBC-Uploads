clc,clear
printf('Example 4.14\n\n')

Ns=250 //Speed in rpm
f=50 //frequency
I_l=100
Slots=216
Conductors_per_slot=5
Pole=120*f/Ns
phi=30*10^-3//flux per pole in weber
Z=Slots*Conductors_per_slot  //Total Conductors
Z_ph=Z/3 //conductors per phase
T_ph=Z_ph/2 //turns per phase
n=Slots/Pole //slots per pole
m=n/3 //slots per pole per phase
beeta=180/n //Slot angle

K_d=sind(m*beeta/2) /(m*sind(beeta/2)) //distribution factor

e_av=2*f*phi     //Average Value of EMF in each conductor
E_c=1.11*(2*f*phi)  //RMS value of EMF in each conductor
E=2*E_c*K_d //RMS value of EMF in each turn
E_ph=T_ph*E //RMS value of EMF in each phase
E_line= E_ph*sqrt(3)  //As Star Connected Alternator
printf('RMS value of EMF in each phase = %.3f V\n',E_ph)
printf('RMS value of EMF line value  = %.3f V\n',E_line)
kVA_rating=sqrt(3)*E_line*I_l
printf('\nkVA rating is %.3f kVA ',kVA_rating/1000)
