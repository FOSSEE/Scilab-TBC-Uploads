//To calculate the percent volume change
r_BCC = 1.258;     //atomic radius, A
r_FCC = 1.292;     //atomic radius, A
a_BCC = (4*r_BCC)/sqrt(3);     //In BCC, A
a_BCCm = a_BCC*10^-10;      //converting a from A to m
V_BCC = a_BCCm^3;     //volume of unit cell, m^3
n_BCC = ((1/8)*8)+1;      //number of atoms per unit cell
V1_BCC = V_BCC/n_BCC;     //volume occupied by 1 atom, m^3
a_FCC = 2*sqrt(2)*r_FCC;     //In FCC, A
a_FCCm = a_FCC*10^-10;      //converting a from A to m
V_FCC = a_FCCm^3;     //volume of unit cell, m^3
n_FCC = ((1/2)*6) + ((1/8)*8);      //number of atoms per unit cell
V1_FCC = V_FCC/n_FCC;     //volume occupied by 1 atom, m^3
delta_V = (V1_BCC - V1_FCC)*100/V1_BCC;       //change in volume in %
printf("decrease of volume during conversion from BCC to FCC is %5.1f percent",delta_V);
