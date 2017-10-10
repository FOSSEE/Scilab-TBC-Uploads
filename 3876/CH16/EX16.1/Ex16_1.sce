//Chapter 16 Oxidation Reduction Potentials

clc;
clear;

//Initialisation of Variables
x= 0.02 //m
y= 0.4 //m
R= 0.0592
e= -0.771 //V
e1= -1.520 //v
n= 5 //electrons
z= 0.80 //m
z1= 0.5 //m

//CALCULATIONS
E= e-R*log10(x/y)
E1= e1-(R/n)*log10(z1*z**8/x)
E2= E-E1

//RESULTS
mprintf("Redox potential of sample= %.3f v",E)
mprintf("\nRedox potential of sample= %.3f v",E1)
mprintf("\nRedox potential of sample= %.3f v",E2)
