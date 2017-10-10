//developed in windows 8 operating system 64bit
//platform Scilab 5.4.1
//example 25_1w

clc;clear;
//Given Data

mass_ice=1; //Mass of ice (Unit:kg)
init_temp=-10;  //Temperature of the ice (Unit : degree centigrade)
final_temp=100; //Temperature of the steam (Unit : degree centigrade)
sp_heat_ice=2100;       //Specific heat capacity of ice (Unit: J/kg-K)
latent_heat_ice=3.36*10^5;      //Latent heat of fusion of ice (Unit: J/Kg)
sp_heat_water=4200;     //Specific heat capacity of water (Unit: J/kg-K)
latent_heat_water=2.25*10^6;        //Latent heat of vapourization of water (Unit: J/Kg)

//Calculation

heat_ice_to_0_degree=mass_ice*sp_heat_ice*(0-(init_temp));  //Heat required to take the ice from -10 degree centigrade to 0 degree centigrade (Unit : Joules)

heat_req_melt=mass_ice*latent_heat_ice;         //Heat required to melt the ice at o degree centigrade to water (Unit: Joules)

heat_req_zero_to_100=mass_ice*sp_heat_water*(final_temp-0);     //Heat required to take the water from 0 degree centigrade to 100 degree centigrade (Unit : Joules)

heat_req_steam=mass_ice*latent_heat_water;      //Heat required to convert 1 kg of water at 100 degree centigrade into steam

total_heat=heat_ice_to_0_degree+heat_req_melt+heat_req_zero_to_100+heat_req_steam;      //Total heat required (Unit: Joules)

disp(total_heat,"Total Heat required to convert 1 kg of ice at -10 degree centigrade into steam at 100 degree centigrade is (Unit : Joules)");
