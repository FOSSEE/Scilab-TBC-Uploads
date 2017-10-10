//Optical Fiber communication by A selvarajan
//example 
//OS=Windows XP sp3
//Scilab version 5.5.1
clc;
clear all;
//given 
PL=1;//length of preform in m
PD=25e-3;//daimeter of preform in m
OD=125e-6;//outer daimeter of optical fiber in m
V=%pi*((PD/2)^2)*PL;//volume of Preform cylinder in m^3
L=V/(%pi*((OD)^2));//Length of optical fiber in m
mprintf("Length of optical fiber=%fKm",L/1e3);//division by 1e3 to convert unit from m to Km
