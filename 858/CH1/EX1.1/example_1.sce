clc
clear 
printf("example 1.1 page number 19\n\n")
//to find composition of air by weight
y_oxygen = 0.21       //mole fraction of oxygen
y_nitrogen = 0.79     //mole fraction of nitrogen
molar_mass_oxygen = 32
molar_mass_nitrogen = 28

molar_mass_air = y_oxygen*molar_mass_oxygen+y_nitrogen*molar_mass_nitrogen;
mass_fraction_oxygen =y_oxygen*molar_mass_oxygen/molar_mass_air;
mass_fraction_nitrogen = y_nitrogen*molar_mass_nitrogen/molar_mass_air;

printf("mass fraction of oxygen = %f \n\n",mass_fraction_oxygen)
printf("mass fraction of nitrogen = %f \n\n",mass_fraction_nitrogen)

V1 = 22.4       //in liters
P1 = 760        //in mm Hg
P2= 735.56      //in mm Hg
T1= 273         //in K
T2 = 298     //in K

V2= (P1*T2*V1)/(P2*T1);
density = molar_mass_air/V2;

printf("density = %f gm/l",density)
