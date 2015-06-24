// Computation of volume from concentration and mass

clear;
clc;

printf("\t Example 4.7\n");

mGlucose=3.81;//mass of Glucose, g

Glucose=180.2;//mol mass of Glucose, g

M=2.53;//Concentration of Glucose, M

moles=mGlucose/Glucose;//moles of Glucose

V=moles/M;//volume of Glucose, L


printf("\t the volume of the Glucose needed is : %4.2f mL\n",V*1000);

//End
