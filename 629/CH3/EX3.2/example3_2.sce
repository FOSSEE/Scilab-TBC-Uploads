clear
clc
//Example 3.2 WATER PRESSURE IN A TANK
//Hydrostatic equation, p1/Gamma +z1=p2/Gamma +z2
p1=0; //[psig]
z1=250; //[ft]
z2=215; //[ft]
Gamma=62.4; //specific weight of water[lbf/ft^3]
//1psig=144psfg
p2=p1+(z1-z2)*Gamma/144 //[psig]
printf("\nThe water pressure at the depth of 35ft in the tank = %.1f psig.\n",p2)