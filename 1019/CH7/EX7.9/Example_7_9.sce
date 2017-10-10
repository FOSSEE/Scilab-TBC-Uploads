//Example 7.9
clear;
clc;

//Given
R=8.314;//gas constant in J K^-1 mol^-1
T=298;//temperature in K
P=1;//pressure in atm
kO2=4.34*(10^4);//Henrys constant for O2 in atm
kN2=8.57*(10^4);//Henrys constant for N2 in atm

//To determine the molality of O2 and N2 dissolved in water
xO2=P/kO2;//mole fraction of O2
xN2=P/kN2;//mole fraction of N2
mO2=55.5*xO2;//molality of O2 in mol kg^-1
mN2=55.5*xN2;//molality of N2 in mol kg^-1
mprintf('Molality of O2 dissolved in water = %f mol kg^-1',mO2);
mprintf('\n Molality of N2 dissolved in water = %f mol kg^-1',mN2);
//end