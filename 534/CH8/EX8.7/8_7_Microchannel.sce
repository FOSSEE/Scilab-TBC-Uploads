clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 8.7   Page 525 \n'); //Example 8.5
// Time needed to bring the reactants to within 1 degC of processing temperature

//Operating Conditions
T1 = 125+273;    //[K] Chip Temperature 1
T2 = 25+273;    //[K] Chip Temperature 2
Ti = 5+273;    //[K] Inlet Temperature 
D = .01;          //[m] Diameter
L = .02;            //[m] length
delP = 500*10^3;    //[N/m^2] Pressure drop
//Dimensions
a = 40*10^-6;       
b = 160*10^-6;
s = 40*10^-6;

//Table A.5 Ethylene Glycol Properties T = 288 K
rho = 1120.2;            //[kg/m^3]    Density
cp = 2359;               //[J/kg.K]    Specific Heat
u = 2.82*10^-2;         //[N.s/m^2] Viscosity
k = 247*10^-3;          //[W/m.K]  Thermal Conductivity
Pr = 269;               //Prandtl number 
//Table A.5 Ethylene Glycol Properties T = 338 K
rho2 = 1085;            //[kg/m^3]    Density
cp2 = 2583;               //[J/kg.K]    Specific Heat
u2 = .427*10^-2;         //[N.s/m^2] Viscosity
k2 = 261*10^-3;          //[W/m.K]  Thermal Conductivity
Pr2 = 45.2;               //Prandtl number

P = 2*a+2*b;                //Perimeter of microchannel
Dh = 4*a*b/P;                //Hydraulic Diameter

um2 = 2/73*Dh^2/u2*delP/L;        //[[m/s] Equation 8.22a
Re2 = um2*Dh*rho2/u2;        //Reynolds Number
xfdh2 = .05*Dh*Re2;        //[m] From Equation 8.3
xfdr2 = xfdh2*Pr2;        //[m] From Equation 8.23
m2 = rho2*a*b*um2;        //[kg/s]
Nu2 = 4.44;            //Nusselt Number from Table 8.1
h2 = Nu2*k2/Dh;        //[W/m^2.K] Convection Coeff
Tc2 = 124+273;        //[K]
xc2 = m2/P*cp2/h2*2.303*log10((T1-Ti)/(T1-Tc2));
tc2 = xc2/um2;

um = 2/73*Dh^2/u*delP/L;        //[[m/s] Equation 8.22a
Re = um*Dh*rho/u;        //Reynolds Number
xfdh = .05*Dh*Re;        //[m] From Equation 8.3
xfdr = xfdh*Pr;        //[m] From Equation 8.23
m = rho2*a*b*um;        //[kg/s]
Nu = 4.44;            //Nusselt Number from Table 8.1
h = Nu*k/Dh;        //[W/m^2.K] Convection Coeff
Tc = 24+273;        //[K]
xc = m/P*cp/h*2.303*log10((T2-Ti)/(T2-Tc));
tc = xc/um;

printf("\n Temp [degC]                        %i                %i\n\n Flow rate [m/s]                    %.3f             %.3f\n Reynolds Number                    %.1f               %.1f\n Hydrodynamic entrance Length [m]   %.1e          %.1e\n Thermal entrance Length [m]        %.1e          %.1e\n Mass Flow rate [kg/s]              %.2e         %.2e\n Convective Coeff [W/m^2.K]         %.2e         %.2e\n Transition Length [m]              %.2e         %.2e\n Required Time [s]                  %.3f             %.3f",T2-273,T1-273,um,um2,Re,Re2,xfdh,xfdh2,xfdr,xfdr2,m,m2,h,h2,xc,xc2,tc,tc2);
//END