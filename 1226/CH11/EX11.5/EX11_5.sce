clc;funcprot(0);//EXAMPLE 11.5
// Initialisation of Variables
afr=15;.....................//Air fuel ratio
p1=1;.........................//Atmospheric pressure in bar
p2=0.8;.......................//Pressure at venturi throat in bar
pd=30;....................//Pressure drop to air cleaner in mm of Hg
rhohg=13600;....................//Density of Hg in kg/m^3
af=240;........................//Air flow at sea level in kg/h
g=9.81;.....................//Acceleration due to gravity in m/s^2
//calculations
delpa=p1-p2;........................//When there is no air cleaner
pt=1-(rhohg*g*(pd/1000)*10^(-5))-delpa;..........................//Throat pressure in bar
disp(pt,"Throat pressure (in bar):")
afrn=afr*sqrt(delpa/(p1-pt));...............................//Air fuel ratio when the air cleaner is fitted
disp(afrn,"Air fuel ratio when the air cleaner is fitted:")

