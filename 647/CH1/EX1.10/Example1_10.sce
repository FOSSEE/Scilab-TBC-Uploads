clear;
clc;

// Example: 1.10
// Page: 12

// Solution

printf("Example: 1.10 - Page: 12\n\n");

//*****Data*****//
m = 1200;// [kg]
v1 = 10;// [km/h]
v2 = 100;// [km/h]
time = 1;// [min]
//***************//

v1 = 10*1000/3600;// [m/s]
v2 = 100*1000/3600;// [m/s]
W = (1/2)*m*(v2^2 - v1^2);// [J]
time = time*60;// [s]
P = W/time;// [W]
printf("Power required is %.2f kW\n",P/1000);