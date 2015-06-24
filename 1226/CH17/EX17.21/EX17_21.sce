clc;funcprot(0);//EXAMPLE 17.21
// Initialisation of Variables
n=4;.......................//No of cylinders
D=0.075;.......................//Engine bore in m
L=0.09;........................//Engine length in m
err=39/8;.......................//Engine to rear axle ratio
Dw=0.65;.........................//Wheel diameter in m
pc=0.227;.......................//Petrol consumption in kg
pmi=5.625;.........................//Mean effective pressure in bar
C=43470;..............................//Calorific value of petrol in kJ/kg
k=0.5;.............................//Four stroke engine
sc=48;............................//Speed of the car in km/h
d=3.2;.............................//Distance covered by car in km
//Calculations
sc1=sc*(1000/60);...................//Speed of the car in m/min
Nt=sc1/(%pi*Dw);......................//Revolutions made by tire per min
Ne=Nt*err;............................//Speed of engine shaft
IP=(n*pmi*L*(%pi/4)*D*D*Ne*k*10)/6;........//Indicated power in kW
disp(IP,"Indicated power (in kW):")
sc2=sc/60;.......................//Speed of the car in km/min
t=d/sc2;..........................//Time for covering 3.2 km in min
fc=pc/(t*60);.....................//Fuel consumed per second in kg
etait=IP/(fc*C);...............//Indicated thermal efficiency
disp(etait*100,"Indicated thermal efficiency (%):")


