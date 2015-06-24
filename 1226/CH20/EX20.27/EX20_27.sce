clc;funcprot(0);//EXAMPLE 20.27
// Initialisation of Variables
ns=3;......//No of stages
p1=1.05;......//Intake pressure in bar
pd=40;..........//Delivery pressure in bar
V=3;..........//Volume of air xupplied per min in m^3
n=1.25;........//Compression index
//Calculations
Wd=((ns*n)/(n-1))*p1*V*10^5*(((pd/p1)^((n-1)/(ns*n)))-1);..........//Work done per min in Nm
disp(Wd,"Work done in Nm:")
isoWd=10^5*p1*V*log(pd/p1);..........//Isothermal work done in Nm
disp(isoWd,"Isothermal work done in Nm:")
etaiso=isoWd/Wd;...............//Isothermal efficiency
disp(etaiso*100,"Isothermal efficiency in %:")
wdss=((n)/(n-1))*p1*V*10^5*(((pd/p1)^((n-1)/(n)))-1);..........//Single stage Work done per min in Nm
disp(wdss,"Single stage work done per min in Nm:")
perws=(wdss-Wd)/wdss;.......//Percentage of work saved
disp(perws*100,"Percentage of work saved:")
