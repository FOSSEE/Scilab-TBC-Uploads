clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 11.5   Page 696 \n'); //Example 11.5
// Outlet Temperature of cooling Water
// Tube length per pass to achieve required heat transfer

//Operating Conditions
q = 2*10^9        ;//[W] Heat transfer Rate
ho = 11000        ;//[W/m^2.K] Coefficient of heat transfer for outer surface
Thi = 50+273    ;//[K] Hot Fluid Condensing Temperature
Tho = Thi    ;//[K] Hot Fluid Condensing Temperature
Tci = 20+273    ;//[K] Cold Fluid intlet Temperature
mc = 3*10^4     ;     //[kg/s] Cold Fluid flow rate
m =  1          ;//[kg/s] Cold Fluid flow rate per tube
D = .025        ;//[m] diameter of tube
//Table A.6 Saturated water Liquid Properties Tf = 300 K
rho = 997        ;    //[kg/m^3] Density
cp = 4179        ;      //[J/kg.K] Specific Heat
k = 0.613        ;        //[W/m.K] Conductivity
u = 855*10^-6    ;        //[N.s/m^2] Viscosity
Pr = 5.83        ;        // Prandtl number

//Equation 11.6b
Tco = q/(mc*cp) + Tci;

Re = 4*m/(%pi*D*u);
printf("\n As the Reynolds number of tube fluid is %i. Hence the flow is turbulent. Hence using Diettus-Boetllor Equation 8.60", Re);
Nu = .023*Re^.8*Pr^.4;
hi = Nu*k/D;
U = 1/[1/ho + 1/hi];
N = 30000            ;//No of tubes
T1 = Thi-Tco;
T2 = Tho-Tci;
Tlm = (T1-T2)/(2.30*log10(T1/T2));
L2 = q/(U*N*2*%pi*D*Tlm);


printf("\n Outlet Temperature of cooling Water = %.1f degC\n Tube length per pass to achieve required heat transfer = %.2f m",Tco-273,L2);
//END