
//To Calculate the amount of Electrical Energy obtained in kilowatt-hour

//Example 47.5

clear;

clc;

c=3*10^8;//Speed of light in m/s

m=3.6*10^-3;//Mass of the object in kilograms

E=m*c^2/(3.6*10^6);//Amount of Electrical Energy obtained in kWh

printf("Electrical Energy obtained when a mass of 3.6 g is fully converted into energy = %.0f*10^7 kWh",E*10^-7);
