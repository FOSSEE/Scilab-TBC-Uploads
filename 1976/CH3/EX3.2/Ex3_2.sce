
//To determine the most economical cross sectional area
//Page 104
clc;
clear;

OFC=180; //Cost of single phase overhead feeder per km per unit area + 1200
AIDC= 10*OFC/100; //Annual Interest and depriciation charges + 120
R=1/58; //Resistance of 1m length and 1 sq.mm
I=200; // Maximum Current Flowing
CLPUL= 2*(I^2)*R*1000; // Copper Loss per unit length per unit area
ACL= CLPUL*365*24*(8/12); // Annual Copper Loss
GC= 5/100; // Genereating Cost per unit.
ACEL= ACL*GC/1000; // Annual cost of energy loss
A= sqrt(ACEL/AIDC); //Cross Sectional Area of the cable
printf('The Most Economical cross sectional area of the cable for this Case is %g sq.mm',A)
