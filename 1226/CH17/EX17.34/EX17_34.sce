clc;funcprot(0);//EXAMPLE 17.34
// Initialisation of Variables
R=287;................//Gas constant in J/kg K
n=4;...................//No of cylinders
D=0.0825;..............//Engine bore in m
L=0.13;................//Engine stroke in m
BP=28;..................//Brake power in kW
N=1500;.................//Engine rpm
afrth=14.8;...............//theoretical air fuel ratio 
C=45980;..................//Calorific value of fuel in kJ/kg
etamech=0.9;.............//Mechanical efficiency
ap=70;..................//Percentage of Volume of air in he cylinder
fr=20;..................//Percentage richness of the fuel
p1=1.0132;.................//Ambient pressure in bar
pc=762;...................//Pressure in the cylinder in mm of Hg 
tc=273+15.5;...............//Temperature in the cylinder in Kelvin
k=0.5;..................//Four stroke engine
//Calculations
Vs=(%pi/4)*D*D*L;.......................//Swept volume in m^3
va=(ap/100)*Vs;.....................//Volume of air drawn in m^3
p=(pc/760)*p1;
m=(p*(10^5)*va)/(R*tc);...................//Mass of air per stroke per cylinder
tmau=m*(N/2)*n;...................//Theoretical mass of air used per minute in kg
tmfu=tmau/afrth;..................//Theoretical mass of fyel used per min in kg
mf=(tmfu/60)*((100+fr)/100);...............//Mass of fuel burnt per second in kg
IP=BP/etamech;.........................//Indicated power in kW
etaith=IP/(mf*C);.....................//Indicated thermal efficiency 
disp(etaith*100,"Indicated thermal efficiency (in %):")
pmb=(BP*6)/(n*L*D*D*(%pi/4)*N*10*k);...............//Mean effective pressure in bar
disp(pmb,"Mean effective pressure (in bar):")
