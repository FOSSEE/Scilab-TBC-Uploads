//Exa 7.14
clc;
clear;
close;
format('v',9);
//given data
T1=400;// in K
T2=500;// in K
T3=1200;// in K
alpha1=0.70;
alpha2=0.6;
alpha3=0.4;
// First part
disp("Radiation falling on the body is emitted by the furnace wall at 1200 K ")
disp("The absorptivity of the body for this radiation is 0.4.")
sigma=5.67*10^-8;
qa=alpha3*sigma*T3^4;
disp(qa,"The rate of energy absorption in W/m^2");

// Second part
disp("The emissivity of surface equals its absoptivity at 127 degree")
qa=alpha1*sigma*T1^4;
disp(qa,"The rate of emission of radiation energy in W/m^2");


// Note : Answer of the first part in the book is wrong
