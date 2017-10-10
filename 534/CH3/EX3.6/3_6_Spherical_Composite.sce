clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 3.6   Page 122 \n'); //Example 3.6
// Heat conduction through Spherical Container 

k = .0017;    //[W/m.K] From Table A.3, Silica Powder at Temp 300K
h = 5;       //[W/m^2.K]
r1 = 25*10^-2;      //[m]  Radius of sphere
r2 = .275;          //[m]  Radius including Insulation thickness

//Liquid Nitrogen Properties
T = 77;        //[K] Temperature
rho = 804;     //[kg/m^3] Density
hfg = 2*10^5;  //[J/kg] latent heat of vaporisation

//Air Properties
Tsurr = 300;   //[K] Temperature
h = 20        ;//[W/m^2.K]  convection coefficient

Rcond = (1/r1-1/r2)/(4*%pi*k);    //Using Eq 3.36
Rconv = 1/(h*4*%pi*r2^2);
q = (Tsurr-T)/(Rcond+Rconv);

printf("\n\n (a)Rate of Heat transfer to Liquid Nitrogen %.2f W",q);

//Using Energy Balance q - m*hfg = 0
m=q/hfg;    //[kg/s] mass of nirtogen lost per second
mc = m/rho*3600*24*10^3;
printf("\n\n (b)Mass rate of nitrogen boil off %.2f Litres/day",mc);
//END