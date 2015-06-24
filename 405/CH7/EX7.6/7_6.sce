clear;
clc;
printf("\t\t\tExample Number 7.6\n\n\n");
// cube cooling in air
// Example 7.6 (page no.-336) 
// solution

L = 0.2;// [m] side length of cube
Ts = 60;// [degree celsius] surface temperature of cube
Ta = 10;// [degree celsius] air temperature
// this is an irregular solid so we use the information in the last entry of table 7-1(page no.-328) in the absence of a specific correlation for this    geometry. 
// the properties were evaluated as
v = 17.47*10^(-6);// [square meter/s]
k = 0.02685;// [W/m degree celsius]
Pr = 0.70;// prandtl number
Beta = 3.25*10^(-3);// [K^(-1)]
g = 9.8;// [square meter/s] acceleration due to gravity 
// the characteristic length is the distance a particle travels in the boundary layer, which is L/2 along the bottom plus L along the side plus L/2 on  the top or
Gr_into_Pr = (g*Beta*(Ts-Ta)*(2*L)^(3)*Pr)/(v^(2));
// from the last entry in table 7-1 we find
C = 0.52;
n = 1/4;
// so that
Nu = C*(Gr_into_Pr)^(n);
h_bar = Nu*k/(2*L);// [W/square meter degree celsius]
// the cube has six sides so the area is 
A = 6*L^(2);// [square meter]
// the heat required is 
q = h_bar*A*(Ts-Ta);// [W]
printf("heat transfer is %f W",q);
