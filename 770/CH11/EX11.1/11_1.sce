clear;
clc;

//Example - 11.1
//Page number - 385
printf("Example - 11.1 and Page number - 385\n\n");

//Given
Vol_total = 3;//[m^(3)] - Total volume of solution
x_ethanol = 0.6;//Mole fraction of ethanol
x_water = 0.4;//Mole fraction of water

//The partial molar volumes of the components in the mixture are
V_ethanol_bar = 57.5*10^(-6);//[m^(3)/mol]
V_water_bar = 16*10^(-6);//[m^(3)/mol]

//The molar volumes of the pure components are
V_ethanol = 57.9*10^(-6);//[m^(3)/mol]
V_water = 18*10^(-6);//[m^(3)/mol]

//The molar volume of the solution is
V_sol = x_ethanol*V_ethanol_bar + x_water*V_water_bar;//[m^(3)/mol]
//Total number of moles can be calculated as 
n_total = Vol_total/V_sol;//[mol]

//Moles of the components are
n_ethanol = n_total*x_ethanol;//[mol]
n_water = n_total*x_water;//[mol]

//Finally the volume of the pure components required can be calculated as
Vol_ethanol = V_ethanol*n_ethanol;
Vol_water = V_water*n_water;

printf("Required volume of ethanol is %f cubic metre\n\n",Vol_ethanol);
printf("Required volume of water is %f cubic metre",Vol_water);

