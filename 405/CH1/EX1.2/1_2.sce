clear;
clc;
printf("\t\t\tExample Number 1.2\n\n\n");
// convection calculation
// illustration1.2
// solution

Twall = 250;//[degree celsius] wall temperature
Tair = 20;//[degree celsius] air temperature
h = 25;//[W/square meter] heat transfer coefficient
l = 75*10^(-2);//[m] length of plate
b = 50*10^(-2);//[m] width of plate
area = l*b;//[square meter] area of plate
dt = 250-20;//[degree celsius]
// from newton's law of cooling
q = h*area*dt;// [W]
printf("rate of heat transfer is %f kW",q/1000);

