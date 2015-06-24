clc;funcprot(0);//EXAMPLE 17.1
// Initialisation of Variables
Pmi=6;.....................//Mean effective pressure in bar
N=1000;....................//Engine rpm
d=0.11;.....................//Diameter of piston in m
l=0.14;.....................//Stroke length in m
n=1;........................//No of cylinders
k=1;........................//k=1 for two stroke engine
//Calculations
V=l*(%pi/4)*d*d;.............//Volume of the cylinder in m^3
IP=(n*Pmi*V*k*10*N)/6;.........//Indicated Power developed in kW
disp(IP,"Indicated power developed (in kW):")
