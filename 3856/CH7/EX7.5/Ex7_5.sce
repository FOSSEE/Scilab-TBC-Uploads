//What is the Molar mass of Hemoglobin 

//Example 7.5

clc;

clear;

h=77.8/1000;  //Height 0f the liquid in right column in m

g=9.81;  //Acceleration due to gravity in m s^-2

rho=1*10^3;  //Density of the solution in kg m^-3

P=h*g*rho;  //Osmotic pressure of the solution in pascals (N m^-2)

R=8.314;  //Gas constant in J K^-1 mol^-1

T=298;  //Temperature of the solution in K

c2=20;  //Concentration of the solute in kg m^-3

mew2=(c2*R*T)/P;  //Molar mass of the Hemoglobin in kg mol^-1

printf("Molar mass of Hemoglobin = %.0f kg mol^-1",mew2);
