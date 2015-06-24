clc,clear
printf('Example 4.13\n\n')

Pole=16
phi=0.03 //flux per pole
Ns=375 //synchronous speed in rpm
f=Ns*Pole/120 //frequency
printf('frequency is %.0f Hz ',f)
Slots=144
n=Slots/Pole  //slots per pole
m=n/3 //slots per pole per phase
beeta=180/n  //slot angle
K_c=1 //assuming Full-Pitch coil
Conductors_per_slot=10
K_d=sind(m*beeta/2) /(m*sind(beeta/2))  //distribution factor

Total_conductors=Slots*Conductors_per_slot
Total_turns=Total_conductors/2
T_ph=Total_turns/3  //turns per phase
E_ph=4.44* K_c* K_d*phi* f* T_ph
E_line=E_ph*sqrt(3)
printf('\nline voltage is %.2f V ',E_line)
