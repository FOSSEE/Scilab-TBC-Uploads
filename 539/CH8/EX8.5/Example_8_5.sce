//Determining maximum allowable surface crack length

clear;
clc;

printf("\tExample 8.5\n");

E=225D9;                //Young's modulus
gam=1;                  //surface energy in N/m
sigc=13.5D6;            //Critical shear stress in N/m^2

a=2*E*gam/(%pi*sigc^2);

printf("\nMaximum allowable crack length is %.1e m\n",a);

//End