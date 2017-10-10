//Calculate the Viscosity of Oxygen gas

//Example3.3

clc;

clear;

R=8.314;  //Gas constant in J K^-1 mol^-1

T=288;  //Temperature in K

mew=0.03200;  //Molar mass of Oxygen in kg mol^-1

Cbar=sqrt((8*R*T)/(%pi*mew)); //Mean speed of Oxygen in m s^-1

d=3.61*10^-10;  //Collision diameter of Oxygen in m

M=32*1.661*10^-27;  //Mass of Oxygen in kg

eta=(M*Cbar)/((3*d^2*%pi)*sqrt(2));  //Viscosity of Oxygen in kg m^-1 s^-1

printf("Viscosity of Oxygen gas = %.2f*10^-5 kg m^-1 s^-1",eta*10^5);
