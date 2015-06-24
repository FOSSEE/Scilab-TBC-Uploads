clear;
clc;
printf("\t\t\tExample Number 7.2\n\n\n");
// heat transfer from isothermal vertical plate
// Example 7.2 (page no.-332) 
// solution

H = 4;// [m] height of vertical plate
Tp = 60;// [degree celsius] plate temperature
Ta = 10;// [degree celsius] atmospheric temperature
// we first determine the film temperature as
Tf = (Tp+Ta)/2;// [degree celsius]
// the properties of interest are thus
v = 16.5*10^(-6);// [square meter/s]
k = 0.02685;// [W/m degree celsius]
Pr = 0.7;// prandtl number
Beta = 1/(Tf+273);// [K^(-1)]
g = 9.8;// [square meter/s] acceleration due to gravity 
// and
Gr_into_Pr = (g*Beta*(Tp-Ta)*H^(3)*Pr)/(v^(2));
// we then may use equation (7-29) to obtain
Nu_bar_root = 0.825+(0.387*(Gr_into_Pr)^(1/6))/(1+(0.492/Pr)^(9/16))^(8/27);
Nu_bar = (Nu_bar_root)^(2);
// the heat transfer coefficient is 
h_bar = Nu_bar*k/H;// [W/square meter degree celsius]
// the heat transfer is 
A = H*10;// [square meter] for 10 m wide plate
q = h_bar*A*(Tp-Ta);// [W]
// as an alternative, we could employ the simpler relation 
Nu = 0.1*(Gr_into_Pr)^(1/3);
printf("heat transfer if the plate is 10 m wide is %f W",q);





