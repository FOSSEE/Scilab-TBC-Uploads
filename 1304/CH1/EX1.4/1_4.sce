clear;
clc;
printf("\t\t\tExample Number 1.4\n\n\n");
// calculating heat flow from plate to the air flowing aboe it 
// solution

Tw =40 ;//[degree celsius] temperature of the plate

Tf =10 ;//[degree celsius] temperature of the air
hm=30;//[W/m^2 degree celcius] mean heat transfer coefficient
A = 2;//[m^2]area of the plate
qm=hm*(Tw-Tf);//[W/m^2] heat flux
Q=(qm*A)/1000;//[kW] Heat flow
printf("The heat flow through the area is %f kW",Q);

