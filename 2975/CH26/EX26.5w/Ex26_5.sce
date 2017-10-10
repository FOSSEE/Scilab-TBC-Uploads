//developed in windows 8 operating system 64bit
//platform Scilab 5.4.1
//example 26_5w

clc;clear;
//Given Data

mass=100;       //Mass of the steam (Unit: gram)
temp_init=100;  //Initial temperature of the steam (Unit : degree centigrade)
temp_final=20;  //Final temperature of the steam (Unit : degree centigrade)
latent_heat_steam=540;      //Latent heat of vaporization of steam (Unit: cal/gram)
//Calculation

heat_rejected_condens=mass*latent_heat_steam;       //Heat rejected during the condensation of steam in one minute (Unit: cal)
heat_rejected_cooling=mass*(temp_init-temp_final);      //Heat rejected during the cooling of water (Unit: cal)
heat_rejected_min=heat_rejected_condens+heat_rejected_cooling;      //Total heat rejected by the engine per minute (Unit: cal)

disp(heat_rejected_min,"Heat rejected by the engine per minute is (Unit: cal)");
