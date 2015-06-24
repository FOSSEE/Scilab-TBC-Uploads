clc;funcprot(0);//EXAMPLE 17.27
// Initialisation of Variables
n=6;.....................//No of cylinders
r=5;..................//Compression ratio
Vc=0.000115;................//Clearance volume of each cylinder in m^3
fc=10.5;.....................//Fuel consumed in kg/h
C=41800;......................//Calorific value of fuel in  kJ/kg
N=2500;.......................//Engine speed in rpm
er=0.65;.......................//Efficiency ratio
ga=1.4;........................//Degree of freedom
//calculations
etast=1-(1/r^(ga-1));...............................//Air standard efficiency
etath=etast*er;.................................//Thermal efficiency
IP=etath*(fc/3600)*C;..........................//Indicated power in kW
Wnet=(IP*(10^3)*60)/(n*(N/2));..............//Net work froom one cycle per cylinder in N-m
Vs=(r-1)*Vc;......................//Swept volume in m^3
pm=Wnet/(Vs*10^5);...................//Mean effective pressure developed
disp(pm,"Mean effective pressure developed (in bar):")
