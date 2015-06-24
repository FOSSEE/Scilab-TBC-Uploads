clc
clear
printf("Example 1.5 | Page number 12 \n\n");
//find the specific volume and density.

//Given Data
mass = 50 * .001 //in kg
volume = 0.04 //in m^3
printf("Mass = %.2f kg \n",mass);
printf("Volume = %.2f m^3 \n\n",volume);

//Solution
specificVolume = volume / mass //in m^3/kg
density = 1/specificVolume //in kg/m^3
printf("Specific density = %.2f m^3/kg \n",specificVolume);
printf("Density = %.2f kg/m^3 \n",density);
