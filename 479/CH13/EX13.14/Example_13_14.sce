//Chemical Engineering Thermodynamics
//Chapter 13
//Thermodynamics in Phase Equilibria

//Example 13.14
clear;
clc;

//Given
P = 760;//Total pressure of the mixture in mmHg
T = [80 90 95 100];//Temperature in deg celsius
P1 = [87.4 129.0 162.0 187.0];//vapour pressure of 1,1,2,2-tetrachloroethane in mmHg
P2 = [356 526 648 760];//Vapour pressure of water in mmHg

//To Calculate the composition of the vapour evolved
clf;
plot2d(T,P1,style=3);
plot2d(T,P2,style=5);
xtitle(" ","Temp in deg cel","Vapour pressure in mmHg");
legend("1,1,2,2-tetrachloroethane","Water");
//From the graph we conclude that at 93.8 deg cel
P1 = 155;//in mm Hg
P2 = 605;//in mm Hg
y_1 = P1/P;
y_2 = P2/P;
mprintf('Mole fraction of 1,1,2,2-tetrachloroethane in vapour is %f',y_1);
mprintf('\n Mole fraction of water in vapour is %f',y_2);
//end