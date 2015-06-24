

//exapple 4.3 
clc; funcprot(0);
// Initialization of Variable
pi=3.14;
Cd=0.61;
rho=999;
rhoo=877;//density of oil
g=9.81;
h=75/100;
d=12.4/100;//dia of orifice
d1=15/100;//inside diameter
nuo=1/rhoo;//specific volume of oil
//calculation
//part1
delP=h*(rho-rhoo)*g;
A=pi*d^2/4;
G=Cd*A/nuo*sqrt(2*nuo*delP/(1-(d/d1)^4));
disp(G,"mass flow rate in (kg/s)")
//part2
h=(1+0.5)*d1;
delP=rhoo/2*(G*nuo/Cd/A)^2*(1-(d/d1)^4)+h*rhoo*g;
disp(delP,"pressuer differnce between tapping points");
delh=(delP-h*rhoo*g)/(rho-rhoo)/g;
disp(delh,"difference in water levels in manometer i (cm)")
