
clear;
clc;

printf("\t Example 7.3\n");

m=21.5;  //mass flow rate, kg/s
e=260*10^-6;   //wall roughness,m

D=0.12;   //diameter of pipe, m
T1=363;   //pipe temperature,K
T2=323;   //bulk temp. of fluid,K
a=977;  //density, kg/m^3
u=m/(a*3.14*(D/2)^2); //average velocity,m/s
Re=u*D/(4.07*10^-7);  //reynolds no.
Uw=3.1*10^-4;       // wall side viscosity,N*s/m^2
Ub=5.38*10^-4;   //bulk viscosity, N*s/m^2

Pr=2.47;  //prandtl no.

f=1/(1.8/2.303*log(6.9/Re+(e/D/3.7)^1.11))^2;    //friction factor from haaland equation.
Re1=Re*e/D*(f/8)^0.5;    //roughness reynols no.

Nu=(f/8)*Re*Pr/(1+(f/8)^0.5*(4.5*Re1^(0.2)*Pr^(0.5)-8.48));    //correlation for local nusselt no.

h=Nu*0.661/D/1000;   //convection heat transfer coefficient, kW/(m^2*K)
printf("\t correlation friction factor is :%.5f\n",f);
printf("\t convection heat transfer coefficient is :%.1f kw/(m^2*K)\n",h);

printf("\t in this case wall roughness causes a factor of 1.8 increase in h and a factor of 2 increase in f and the pumping power.we have omitted the variable properties hre as they were developed for smooth walled pipes.")
//end