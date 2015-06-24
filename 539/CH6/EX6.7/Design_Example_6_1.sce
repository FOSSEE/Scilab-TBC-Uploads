//Specification of Support Post Diameter

clear;
clc;

printf("\tDesign Example 6.1\n");

sig_y=310;      //Minimum yield strength in MPa
N=5;           // Conservative factor of safety

F=220000/2;    //Two rods must support half of the total force

sig_w=sig_y/N;
d=2*sqrt(F/(%pi*sig_w));

printf("\nDiameter of each of the two rods is %.1f mm\n",d);

//End