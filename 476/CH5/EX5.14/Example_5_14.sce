//A Textbook of Chemical Engineering Thermodynamics
//Chapter 5
//Some Applications of the Laws of Thermodynamics
//Example 14


clear;
clc;


//Given:
m1 = 10; //machine rating (ton)
//Assuming 5 K approach in refrigerator and cooler
Ta = 261-5; //temperature of air leaving the refrigerator (K)
Tc = 293+5; //temperature of air leaving the cooler (K)
gama = 1.4;
Cp = 1.008; //sp. heat of air (kJ/kg K)
P1 = 4.052;
P2 = 1.013; //operating pressures in bar

//To determine the COP and air circulation rate
//Using eq. 5.66 (Page no. 145)
Tb = Ta*(P1/P2)^((gama-1)/gama);
Td = (Tc*Ta)/Tb;

//Using equation 5.68 (PAge no. 146)
COP = Ta/(Tb-Ta);
mprintf('COP = %f',COP);

//Considering energy balance in refrigerator [m*Cp*(Ta-Td) = m1*12660]
m = (m1*12660)/(Cp*(Ta-Td)); //air circulation rate (kg/h)
mprintf('\n Air circulation rate is %i kg/h',m);

//end