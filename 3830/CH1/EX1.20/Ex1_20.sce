// Exa 1.20

clc;
clear;

// Given

// Refer Fig. 1.86
Vdc = 12; // Volts
Vac = 20; // Volts
Vz = 12; // Volts
Iz = 10*10^-3; // in Amps

// Solution

R =(Vac-Vdc)/Iz;
printf('The value of resistance R = %d Ohms \n',R);
P = Vdc*Iz;
printf(' Power rating of the Zener = %d mW \n',P*1000);
printf(' Factor 2 is the safety factor \n The power rating of the resistor taking a safety factor of 2 is P = ');
psafety = 2*(Vdc - Vz)/R;
printf(' %.2f W \n',psafety);
printf(' 1/16 W resistor curve serves the purpose \n');

//The answer provided in the textbook for power rating is wrong
