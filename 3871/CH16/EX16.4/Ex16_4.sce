//=====================================================================================
//Chapter 16 example 4

clc;clear all;

//variable declaration
Va  = 2000;   //accelerating voltage in V
e    = 1.6*10^-19;      //charge of electron in C
m    = 9.1*10^-31;      //mass of electron in kg
l    = 0.015;    //length of plates in m
d    = 0.005;    //distance between plates in m
S    = 0.5;      //the distance between the screen and centre of plates in m

//calcuations
V    = sqrt(2*Va*(e/m));    //beam speed in m/s
Sd    = (l*S)/(2*d*Va);            //deflection sensitivity of the tube in mm/V
D     = 1/(Sd);            //defelection factor in V/mm

//result
mprintf("Beam speed  = %3.3e m/s",V);
mprintf("\ndeflection sensitivity of the tube %3.3f mm/V",(Sd*10^3));
mprintf("\ndefelcction factor = %3.4f V/mm",(D*10^-3));

