//density of ionic crystals

clear;
clc;

printf("\t Example 11.6\n");

Na=22.99;//mass of one atom of Na, amu
Cl=35.45;//mass of one atom of Cl, amu
NA=6.022*10^23;//avogadro no.
mass=4*(Na+Cl)/NA;//mass in a unit cell in grams
a=564*10^-10;//edge length, cm
V=a^3;//volume of unit cell, cc
d=mass/V;//density in g/cc

printf("\t the density of NaCl is : %4.2f g/cc\n",d);

//End
