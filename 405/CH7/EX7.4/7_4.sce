clear;
clc;
printf("\t\t\tExample Number 7.4\n\n\n");
// heat transfer from fine wire in air
// Example 7.4 (page no.-333-334) 
// solution

d = 0.00002;// [m] diameter of wire
L = 0.5;// [m] length of wire whose temperature is maintained
Ts = 54;// [degree celsius] surface temperature of wire 
Pa = 101325;// [Pa] pressure of air
Ta = 0;// [degree celsius] temperature of air 
// we first determine the film temperature as
Tf = (Ts+Ta)/2;// [degree celsius]
// the properties of interest are thus
v = 15.69*10^(-6);// [square meter/s]
k = 0.02624;// [W/m degree celsius]
Pr = 0.708;// prandtl number
Beta = 1/(Tf+273);// [K^(-1)]
g = 9.8;// [square meter/s] acceleration due to gravity 
// and
Gr_into_Pr = (g*Beta*(Ts-Ta)*d^(3)*Pr)/(v^(2));
// from table 7-1 we find
C = 0.675;
m = 0.058;
// so that
Nu_bar = C*(Gr_into_Pr)^(m);
h_bar = Nu_bar*k/d;// [W/square meter degree celsius]
// the heat required is 
A = %pi*d*L;// [square meter] surface area of wire 
q = h_bar*A*(Ts-Ta);// [W]
printf("electric power necessary to maintain the the wire temperature if the length is 0.5 m is %f W",q);
