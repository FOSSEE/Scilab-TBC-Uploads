//computation of molality from density and molarity

clear;
clc;

printf("\t Example 12.4\n");

//considering 1L solution
msolution=976;//mass of solution, g
n=2.45;//moles
CH3OH=32.04;//mol. mass of CH3OH, g
msolute=n*CH3OH;//mass of solute, g
msolvent=(msolution-msolute)/1000;//mass of solvent, kg
m=n/msolvent;//molality, molal

printf("\t the molality of CH3OH solution is : %4.2f m\n",m);

//End
