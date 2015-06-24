clear;
clc;

// Example: 9.3
// Page: 339

printf("Example: 9.3 - Page: 339\n\n");

// Solution

//*****Data******//
Vol = 2000;// [cubic cm]
y1_1 = 0.96;// [mass fraction of ethanol in laboratory alcohol]
y2_1 = 0.04;// [mass fraction of water in laboratory alcohol]
y1_2 = 0.56;// [mass fracion of ethanol in vodka]
y2_2 = 0.44;// [mass fraction of water in vodka]
Vbar_water1 = 0.816;// [cubic cm/g]
Vbar_ethanol1 = 1.273;// [cubic cm/g]
Vbar_water2 = 0.953;// [cubic cm/g]
Vbar_ethanol2 = 1.243;// [cubic cm/g]
Density_water = 0.997;// [cubic cm/g]
//***************//

// Solution (i)
// From Eqn 9.9
Va = y1_1*Vbar_ethanol1 + y2_1*Vbar_water1;// [Volume of laboratory alcohol, cubic cm/g]
mass = Vol/Va;// [g]
// Let Mw be the mass of water added in laboratory alcohol.
// Material balance on ethanol:
Mw = mass*y1_1/y1_2 - mass;// [g]
Vw = Mw/Density_water;// [Volume of water added, cubic cm]
printf("Mass of water added is %d g\n",Mw);

// Solution (ii)
Mv = mass + Mw;// [Mass of vodka, g]
Vv = y1_2*Vbar_ethanol2 + y2_2*Vbar_water2;// [Volume of ethanol, cubic cm/g]
V_vodka = Vv*Mv;// [Volume of vodka obtained after conversion, cubic cm]
printf("The volume of vodka obtained after conversion is %.d cubic cm\n",V_vodka);