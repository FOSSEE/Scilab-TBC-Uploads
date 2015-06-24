clc;funcprot(0);//Example 5.19
//Initilisation of Variables
Tmi=20;.....//Inlet Temperature of water in degrees celcius
D=0.02;...//Diameter of tube in m
U=0.05;........//Velocity of water in m/s
Tw=40;......//Temperature of tube wall at degrees celcius
//Properties of water at Tmi
rho=1000;......//Density in kg/m^3
mu=1.006*10^-6;......//Viscocity in m^2/s
Pr=7.02;........//Prandtl no
K=597.8*10^-3;........//Thermal conductivity in W/mK
Cp=4.178*10^3;.....//Specific heat capacity in kJ/kgK
//calculation
Re=(U*D)/mu;..............//Reynolds no
//(i)For Length of Tube being 1 m
x1=1;.....//Length of the tube in m
Nu1=1.67*((Re*Pr)/(x1/D))^0.333;...........//Nusselt number
As=%pi*D*x1;...........//Area of the tube in m
h1=(Nu1*K)/D;.........//Heat transfer co efficient in W/m^2K
m=((%pi*D^2)/4)*U*rho;............//Mass flow rate in kg/s
Tmo1=((h1*As*((2*Tw)-Tmi))+(m*Cp*Tmi))/((m*Cp)+(h1*As));........//Outlet temperature of water when Length of tube is 1 m
disp(Tmo1,"Outlet temperature of water when Length of tube is 1 m:")
//(ii)The length of tube is 10 m
x2=0.07;.....//Length of the tube in m
Nu2=3.66+((0.0668*(D/x2)*(Re*Pr))/(1+(0.04*[(D/x2)*(Re*Pr)]))^0.67);...........//Nusselt number
h2=(Nu2*K)/D;.........//Heat transfer co efficient in W/m^2K
//Properties of water at Tmo=35.5
rho3=998;......//Density in kg/m^3
mu3=0.831*10^-6;......//Viscocity in m^2/s
Pr3=5.95;........//Prandtl no
Cp3=4.178*10^3;.....//Specific heat capacity in kJ/kgK
Re3=(U*D)/mu3;..............//Reynolds no
x3=10;.....//Length of the tube in m
Nu3=1.67*((Re3*Pr3)/(x3/D))^0.333;...........//Nusselt number
//This is same as previous trail value
Tmo3=35.5;........//Outlet temperature of water when Length of tube is 10 m
disp(Tmo3,"Outlet temperature of water when Length of tube is 10 m:")
