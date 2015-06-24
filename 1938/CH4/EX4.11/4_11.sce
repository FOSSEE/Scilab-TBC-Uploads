clc,clear
printf('Example 4.11\n\n')

Pole=8
f=50 //frequency
phi=60*10^-3 //flux per pole in weber
Slots=96 
n=Slots/Pole //slots per pole
beeta = 180/n //slot angle 
m=n/3 //slots per pole per phase

coil_pitch=10*beeta //10 slots
alpha=180-coil_pitch
K_c=cosd(alpha/2)   //coi;-span factor
K_d=sind(m*beeta/2) /(m*sind(beeta/2)) //distribution factor

conductors_per_slot=4  
Z=Slots*conductors_per_slot //total conductors
Total_turns=Z/2  
T_ph=Total_turns/3  //turns per phase

//part (i)
E_ph= 4.44 *K_c *K_d *phi *f *T_ph
printf('\The phase voltage is %.2f V ',E_ph)

//part(ii)
E_line=E_ph*sqrt(3)
printf('\nThe Line Voltage is %.2f V ',E_line)

 //part(iii)
I_ph=650
I_l=I_ph  // Star Connection
kVA_rating=sqrt(3)*E_line*I_l
printf('\nkVA rating is %.1f kVA ',kVA_rating/1000)
