clc
//Initialization of variables
T=77 //F
//calculations
Hr=-36420 //B
hc=-169290 //B/lb mol
hh=-122970 //B/lb mol
Hp=2*hc+3*hh
Q=Hp-Hr
//results
printf("Heat transfer = %d B/mol fuel",Q)
