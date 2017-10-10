clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 8.6   Page 516 \n'); //Example 8.6
// Heat Loss from the Duct over the Length L, q 
// Heat flux and suface temperature at x=L

//Operating Conditions
m = .05;            //[kg/s] mass flow rate of water
Ti = 103+273;       //[K] Inlet temp
To = 77+273;       //[K] Outlet temperature
D = .15;          //[m] Diameter
L = 5;            //[m] length
ho = 6;            //[W/m^2.K] Heat transfer convective coefficient
Tsurr = 0+273;    //[K] Temperature of surrounding

//Table A.4 Air Properties T = 363 K
cp = 1010;          //[J/kg.K] specific heat
//Table A.4 Air Properties T = 350 K
k = .030;           //[W/m] Thermal Conductivity
u = 20.82*10^-6;     //[N.s/m^2] Viscosity
Pr = .7;           //Prandtl Number

q = m*cp*(To-Ti);

Re = m*4/(%pi*D*u);
printf("\n As Reynolds Number is %i. The flow is Turbulent.",Re);

//Equation 8.6
n = 0.3;
Nu = .023*Re^.8*Pr^.3;
h = Nu*k/D;
q2 = (To-Tsurr)/[1/h + 1/ho];
Ts = -q2/h+To;

printf("\n\n Heat Loss from the Duct over the Length L, q = %i W \n Heat flux and suface temperature at x=L is %.1f W/m^2 & %.1f degC respectively",q,q2,Ts-273);

//END