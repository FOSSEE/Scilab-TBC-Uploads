clc;funcprot(0);//Example 5.25
//Initilisation of Variables
D=0.03;...//Diameter of tube in m
m=0.0047;........//Mass flow rate of air in kg/s
Ti=373;......//Temperature of air in degrees celcius
Q=1;...........//Heat supplied to the outer surface of the tube in kW
//Properties of air
rho=0.75;......//Density in kg/m^3
mu=35.5*10^-6;......//Viscocity in m^2/s
Pr=0.68;........//Prandtl no
K=0.0397;........//Thermal conductivity in W/mK
U=7;.............//Velocity in m/s
//calculations
Te=Ti+((1/m)*Q);............//Water exit temperature in degrees celcius
Ta=(Ti+Te)/2;..........//Average air temperature
Re=(U*D)/mu;..........//Reynolds number 
Nu=0.023*Re^0.8*Pr^0.3;..........//Nusselt number
disp(Te,"Water exit temperature in degrees celcius:")
disp(Nu,"Nusselt number:")
