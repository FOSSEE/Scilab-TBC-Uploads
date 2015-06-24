//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 11.19\n\n\n");
// Chapter 11 : Heat Transfer
// Problem 11.19  (page no. 586) 
// Solution

//A bare steel pipe
//From the Table 11.5,case 2,
Fe=0.79; //Emissivity factor to allow for the departure of the surfaces interchanging heat from complete blackness;Fe is a function of the surface emissivities and       configurations
FA=1; //geometric factor to allow for the average solid angle through which one surface "sees" the other
sigma=0.173*10^-8; //Stefan-Boltzmann constant //Unit:Btu/(hr*ft^2*R^4)
T1=120+460; //outside temperature //Unit:R //fahrenheit converted to absolute temperature
T2=70+460; //inside temperature //Unit:R //fahrenheit converted to absolute temperature
D=3.5/12; //3.5 inch = 3.5/12 feet//Unit:ft //Outside diameter
L=5; //Length //Unit:ft //From problem 11.10
A=(%pi*D)*L;  //Area //Unit:ft^2 
Q=sigma*Fe*FA*A*(T1^4-T2^4); //The net interchange of heat by radiation between two bodies at different temperatures //Unit:Btu/hr ////Stefan-Boltzmann law
printf("The heat loss by radiation is %f Btu/hr\n",Q);
