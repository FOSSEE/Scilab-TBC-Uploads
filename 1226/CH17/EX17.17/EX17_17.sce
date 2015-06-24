clc;funcprot(0);//EXAMPLE 17.17
//Initialisation of Variables
n=6;.............................//No of cylinders
D=0.09;..........................//Bore of cylinder in m
L=0.1;...........................//Stroke length in m
r=7;.............................//Compression ratio
etarel=0.55;.....................//Relative efficiency
isfc=0.3;........................//Indicated specific fuel consumption in kg/kWh
imep=8.6;........................//Indicated mean effective pressure in bar
N=2500;..........................//Engine speed
ga=1.4;..........................//Degree of freedom for air
k=0.5;...........................//Four stroke engine
//calculations
etastan=1-1/(r^(ga-1));...................//Air standard efficiency
etath=etarel*etastan;.....................//Indicated thermal efficiency 
C=3600/(etath*isfc);.......................//Calorific value of fuel in kJ/kg
IP=(n*imep*L*D*D*(%pi/4)*N*k*10)/6;................//Indicated power in kW
fc=IP*isfc;.............................//Fuel consumption in kg/h
disp (C,"The calorific value of the fuel used (in kJ/kg):")
disp(fc,"Fuel consumption (kg/h):")
