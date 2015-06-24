
//To Determine the most economical current density
// Page 103
clc;
clear;

OFC=15; //Cost of single phase overhead feeder per km per unit area
AIDC= 10*OFC/100; //Annual Interest and depriciation charges
R=1/58; //Resistance of 1m length and 1 sq.mm
CLPUL= 2*R*1000; // Copper Loss per unit length per unit area per unit square current
ACL= CLPUL*365*24*0.5; // Annual Copper Loss
GC= 5/100; // Genereating Cost per unit.
ACEL= ACL*GC/1000; // Annual cost of energy loss
CD= sqrt(AIDC/ACEL); //Current Density
printf('The Most Economical Current Density for this Case is %g A/sq.mm',CD)
