clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 8.4   Page 506 \n'); //Example 8.4
// Length of tube for required heating
// Surface temperature Ts at outlet section

//Operating Conditions
m = .01;            //[kg/s] mass flow rate of water
Ti = 20+273;       //[K] Inlet temp
To = 80+273;       //[K] Outlet temperature
D = .06;          //[m] Diameter
q = 2000;          //[W/m^2] Heat flux to fluid

//Table A.4 Air Properties T = 323 K
cp = 4178;          //[J/kg.K] specific heat
//Table A.4 Air Properties T = 353 K
k = .670;           //[W/m] Thermal Conductivity
u = 352*10^-6;     //[N.s/m^2] Viscosity
Pr = 2.2;           //Prandtl Number
cp = 4178;          //[J/kg.K] specific heat

L = m*cp*(To-Ti)/(%pi*D*q);

//Using equation 8.6
Re = m*4/(%pi*D*u);
printf("\n (a) Length of tube for required heating = %.2f m\n\n (b)As Reynolds Number is %i. The flow is laminar.",L,Re);

Nu = 4.364;        //Nusselt Number
h = Nu*k/D;        //[W/m^2.K] Heat convection Coefficient

Ts = q/h+To;        //[K]

printf("\n Surface Temperature at tube outlet = %i degC",Ts-273);

//END