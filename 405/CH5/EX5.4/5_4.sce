clear;
clc;
printf("\t\t\tExample Number 5.4\n\n\n");
// isothermal flat plate heated over entire length  
// illustration5.4
// solution

// total heat transfer over a certain length of the plate is desired, so we wish to calculate average heat transfer coefficients. 
// for this purpose we use equations (5-44) and (5-45), evaluating the properties at the film temperature :
Tp = 60+273.15;// [K] plate temperature 
Ta = 27+273.15;// [K] air temperature
Tf = (Tp+Ta)/2;// [K]
u = 2;// [m/s] air velocity
// from appendix A the properties are 
v = 17.36*10^(-6);// [square meter/s] kinematic viscosity
x1 = 0.2;// [m] distance from the leading edge of plate
x2 = 0.4;// [m] distance from the leading edge of plate
k = 0.02749;// [W/m K] heat transfer coefficient
Pr = 0.7;// prandtl number
Cp = 1006;// [J/kg K]
// at x = 0.2m
Re_x1 = u*x1/v;// reynolds number
Nu_x1 = 0.332*Re_x1^(1/2)*Pr^(1/3);// nusselt number
hx1 = Nu_x1*k/x1;// [W/square meter K] 
// the average value of the heat transfer coefficient is twice this value, or
h_bar1 = 2*hx1;// [W/square meter K] 
// the heat flow is 
A1 = x1*1;// [square meter] area for unit depth
q1 = h_bar1*A1*(Tp-Ta);// [W]
// at x = 0.4m
Re_x2 = u*x2/v;// reynolds number
Nu_x2 = 0.332*Re_x2^(1/2)*Pr^(1/3);// nusselt number
hx2 = Nu_x2*k/x2;// [W/square meter K] 
// the average value of the heat transfer coefficient is twice this value, or
h_bar2 = 2*hx2;// [W/square meter K] 
// the heat flow is 
A2 = x2*1;// [square meter] area for unit depth
q2 = h_bar2*A2*(Tp-Ta);// [W] 
printf("the heat transfered in first case of the plate is  %f W",q1);
printf("\n\n and the heat transfered in second case of the plate is  %f W",q2);





