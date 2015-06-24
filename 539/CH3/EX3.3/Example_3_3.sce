//Theoretical Density Computation for Copper

clear;
clc;

printf("\tExample 3.3\n");

R=1.28D-08;        //Atomic radius in cm
A_Cu=63.5;         //Atomic wt of copper
n=4;               //For FCC

Na=6.023D23;       //Avogadro no.

a=2*R*sqrt(2);
Vc=a^3;

den=n*A_Cu/(Vc*Na);

printf("\nDensity is %.2f g/cm^3\n",den);

//End