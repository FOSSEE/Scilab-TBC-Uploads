//developed in windows 8 operating system 64bit
//platform Scilab 5.4.1
//example 25_4w

clc;clear;
//Given Data

mass_water=100;     //Mass of water (Unit:g)
latent_heat_water=21*10^5;      //Latent heat of vaporization of water at 0 degree centigrade (Unit: J/kg)
latent_heat_ice=3.36*10^5;      //Latent heat of fusion of ice (Unit : J/kg)

//Formula mL2=(M-m)L1

//Calculation
mass_ice=mass_water*latent_heat_water/(latent_heat_water+latent_heat_ice);      //Calculation of the mass of the ice formed if no water is left in the vessel (Unit : g)

disp(mass_ice,"Mass of the ice formed if no water is left in the vessel (Unit: gram)");
