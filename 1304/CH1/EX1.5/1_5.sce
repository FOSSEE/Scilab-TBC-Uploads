clear;
clc;
printf("\t\t\tExample Number 1.5\n\n\n");
// calculating heat flow from tube to the air flowing across it 
// solution

Tw =110 ;//[degree celsius] temperature of the tube

Tf =10 ;//[degree celsius] temperature of the air
v=5;//[m/s] velocity of air flow
hm=85;//[W/m^2 degree celcius] mean heat transfer coefficient between tube surface and air for air velocity of 5 m/s across a cylinder
d=0.01;//[m] outer diameter of the tube
L=5;
A= %pi*d*L;//[m^2]total area of the cylinder 
qm=hm*(Tw-Tf);//[W/m^2] heat flux, by Newton's law of cooling
Q=(qm*A)/1000;//[kW] Heat flow
printf("The heat flow from the tube to the flowing air  is %f kW",Q);

