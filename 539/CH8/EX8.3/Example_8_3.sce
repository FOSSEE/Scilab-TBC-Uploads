//Estimating theoretical fracture strength

clear;
clc;

printf("\tExample 8.3\n");

a=0.5;            //Crack length in mm
ro=5D-3;          //Crack tip radius of curvature in mm
sig=1035;         //Applied stress in MPa

sigm=2*sig*sqrt(a/ro);

printf("\nFracture strength is %.2e MPa\n",sigm);

//End