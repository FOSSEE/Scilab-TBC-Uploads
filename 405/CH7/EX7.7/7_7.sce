clear;
clc;
printf("\t\t\tExample Number 7.7\n\n\n");
// calculation with simplified relations 
// Example 7.7 (page no.-338-339) 
// solution

// this example is calculation of heat transfer with simplified relations for example (7.5) so we use the data of example 7.5

d = 0.3048;// [m] diameter of pipe
Ts = 250;// [degree celsius] surface temperature of pipe 
Ta = 15;// [degree celsius] temperature of air 
// we first determine the Grashof-prandtl number product and then select the appropriate constants from table 7-1(page no.-328) for use with              equation (7-25) 
// the properties of air are evaluated at the film temperature:
Tf = (Ts+Ta)/2;// [degree celsius]
// the properties of interest are thus
v = 26.54*10^(-6);// [square meter/s]
k = 0.03406;// [W/m degree celsius]
Pr = 0.687;// prandtl number
Beta = 1/(Tf+273);// [K^(-1)]
g = 9.8;// [square meter/s] acceleration due to gravity
// in example (7.5) we found that a rather large pipe with a substantial temperature difference between the surface and air still had a GrPr product of  1.57*10^(8)<10^(9), so laminar equation is selected from table 7-2(page no.-339). the heat transfer coefficient is given by 
h = 1.32*((Ts-Ta)/d)^(1/4);// [W/square meter degree celsius]
// the heat transfer is then 
q_by_L = h*%pi*d*(Ts-Ta);// [W/m]
printf("heat transfer is %f kW/m",q_by_L/1000);



