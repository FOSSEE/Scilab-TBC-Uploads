clear;
clc;
printf("\t\t\tExample Number 5.7\n\n\n");
// oil flow over heated flat plate 
// illustration5.7
// solution

u = 1.2;// [m/s] oil velocity
l = 0.2;// [m] plate length as well as width (square) 
To = 20+273.15;// [K] temperature of engine oil
Tu = 60+273.15;// [K] uniform temperature of plate   
// First we evaluate the film temperature 
T = (To+Tu)/2;// [K]
// and obtain the properties of engine oil are 
rho = 876;// [kg/cubic meter] density of oil
v = 0.00024;// [square meter/s] kinematic viscosity
k = 0.144;// [W/m degree celsius] heat transfer coefficient
Pr = 2870;// prandtl number
// at the trailing edge of the plate the reynolds number is 
Re = l*u/v;// reynolds number
// because the prandtl no. is so large we will employ equation(5-51) for the solution. 
// we see that hx varies with x in the same fashion as in equation(5-44) , i.e. hx is inversely proportional to the square root of x ,
// so that we get the same solution as in equation(5-45) for the average heat transfer coefficient. 
// evaluating equation(5-51) at x = 0.2m gives
Nux = 0.3387*Re^(1/2)*Pr^(1/3)/[1+(0.0468/Pr)^(2/3)]^(1/4);
hx = Nux*k/l;// [W/square meter degree celsius]  heat transfer coefficient
// the average value of the convection coefficient is 
h = 2*hx;// [W/square meter degree celsius]  
// so that total heat transfer is 
A = l^(2);// [square meter] area of the plate 
q = h*A*(Tu-To);// [W] 
printf("average value of the convection coefficient is %f W/square meter degree celsius",h);
printf("\n\n and the heat lost by the plate is %f W",q);







