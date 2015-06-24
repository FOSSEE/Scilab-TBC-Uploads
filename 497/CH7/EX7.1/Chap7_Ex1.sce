//Kunii D., Levenspiel O., 1991. Fluidization Engineering(II Edition). Butterworth-Heinemann, MA, pp 491

//Chapter-7, Example 1, Page 179
//Title: Entrainment from Fine Particle Beds with High Freeboard
//==========================================================================================================
clear
clc

//INPUT
rhog=5.51;//Density of gas in kg/m^3
rhos=1200;//Density of solid in kg/m^3
dpbar=130;//Average size of particles in micrometer
uo=0.61;//Superficial gas velocity in m/s
g=9.80;//Acceleration due to gravity in m/s^2

//CALCULATION
//Assuming that freeboard in higher than TDH, computation of entrainment rate by Zenz & Weil's method
x=(uo^2)/(g*(dpbar*10^-6)*rhos^2);//Calculation of value of x-axis for Fig.(6), page 175
y=1.2;// Value of y-axis from Fig.(6)
Gsstar=y*rhog*uo;//Computation of rate of entrainment

//OUTPUT
mprintf('\nRate of entrainment=%fkg/m^2s',Gsstar);

//====================================END OF PROGRAM ======================================================