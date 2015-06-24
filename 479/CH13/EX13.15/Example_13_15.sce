//Chemical Engineering Thermodynamics
//Chapter 13
//Thermodynamics in Phase Equilibria

//Example 13.15
clear;
clc;

//Given
T = [146.2 142.3 126.1 115.9 95.0 98.0 100];//Temperature in deg cel
P1 = [760.0 685.0 450.3 313.0];//Vapour pressure of 1,1,2,2-tetrachloroethane at the coressponding temperature in mm Hg
P2_5 = 648.0;//Vapour pressure of water at 95 deg cel in mm Hg
P2_6 = 711.0;//Vapour pressure of water at 98 deg cel in mm Hg
P = 760;//Total pressure of mixture in mm Hg

x1 = [0 0 0 0 0 0 0];
//To plot a graph between temperature and vapour phase composition
for i = 1:4
    x1(i) = P1(i)/P;//mole fraction of 1,1,2,2-tetrachloroethane
end
x2_5 = P2_5/P;//mole fraction of water at 95 deg cel
x2_6 = P2_6/P;//mole fraction of water at 98 deg cel
x1(5) = 1-x2_5;
x1(6) = 1-x2_6;

clf;
plot(x1,T);
xtitle("","mole fraction of 1,1,2,2-tetrachloroethane","Temperature in deg cel");
mprintf('The required graph has been ploted in the graphic window');
//end