//Calculate the mass of Carbon di Oxide in gramm that collides every second with leaf

//Example 3.4

clc;

clear;

P=(0.033*101325*1)/(100*1);  //Partial pressure of the gas in Pa

M=44.01*1.661*10^-27;  //Molecular mass of CO2 in kg

R=8.314;  //Gas constant in J K^-1 mol^-1

NA=6.023*10^23; // Avagadro number mol^-1

Kb=R/NA;  //Boltzman's constant in J K^-1

T=298;  //Tepmerature in K

ZA=P/(2*%pi*M*Kb*T)^0.5;

A=0.020;  //Area of leaf in m^2

Noc=ZA*A; //Number of CO2 molecule colliding with the leaf in s^-1 

Moc=Noc*7.31*10^-23;  //Mass of CO2 that colliding with leaf in g s^-1

printf("Mass of Carbon di Oxide that collide = %.1f g s^-1",Moc);


