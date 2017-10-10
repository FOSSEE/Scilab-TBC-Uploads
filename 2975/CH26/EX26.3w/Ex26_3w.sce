//developed in windows 8 operating system 64bit
//platform Scilab 5.4.1
//example 26_3w

clc;clear;
//Given Data

mass=1;     //Mass of water (Unit: kg)
temp=100;   //Temperature of water (Unit : degree centigrade)
density_water=1000;     //Density of water (Unit: kg/m^3)
density_steam=0.6;      //Density of steam (Unit : kg/m^3)
pressure=100*10^3;      //Pressure of water(Unit : Pascal)
latent_heat_vapor=2.25*10^6;    //Latent heat of vapourzation of water (Unit : Joules/kg)

//Calculation

volume_water=mass/density_water;    //Calculation of volume of water (Unit: m^3)
volume_steam=mass/density_steam;    //Calculation of volume of steam (Unit: m^3)
increased_volume=volume_steam-volume_water;     //Calculation of change in volume (Unit; m^3)
work_done=pressure*increased_volume;        //Calculation of work done (Unit: Joules)

change_internal_energy=latent_heat_vapor-work_done;     //Calculation of change in internal energy (Unit: Joules)


disp(change_internal_energy,"The increase in internal energy of 1 kg water is (Unit:Joules)")
