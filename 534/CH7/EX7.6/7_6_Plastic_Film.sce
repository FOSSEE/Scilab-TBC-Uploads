clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 7.6   Page 434 \n'); //Example 7.6
// Time required to cool from Ti = 75 degC to 35 degC

//Operating Conditions
v = 10;            //[m/s] Air velocity
Tsurr = 23+273;    //[K] Surrounding Air Temperature
D = .01;         //[m] Diameter of sphere
Ti = 75+273;        //[K] Initial temp
Tt = 35+273;        //[K] Temperature after time t
p = 1;               //[atm]

//Table A.1 Copper at T = 328K 
rho = 8933;        //[kg/m^3] Density
k = 399;           //[W/m.K] Conductivity
cp = 388;          //[J/kg.K] specific 
//Table A.4 Air Properties T = 296 K
u = 182.6*10^-7;         //[N.s/m^2] Viscosity
uv = 15.53*10^-6;         //[m^2/s] Kinematic Viscosity
k = 25.1*10^-3;           //[W/m.K] Thermal conductivity
Pr = .708;                //Prandtl Number
//Table A.4 Air Properties T = 328 K
u2 = 197.8*10^-7;         //[N.s/m^2] Viscosity

Re = v*D/uv;        //Reynolds number
//Using Equation 7.56
Nu = 2+(0.4*Re^.5 + 0.06*Re^.668)*Pr^.4*(u/u2)^.25;
h = Nu*k/D;
//From equation 5.4 and 5.5
t = rho*cp*D*2.30*log10((Ti-Tsurr)/(Tt-Tsurr))/(6*h);

printf("\nTime required for cooling is %.1f sec",t);

//END