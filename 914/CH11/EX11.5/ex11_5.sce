clc;
warning("off");
printf("\n\n example11.5 - pg521");
// given
Nre=50000;
d=0.04;  //[m] - diameter of pipe
// physical properties of water
T1=293.15;  //[K]
T2=303.15;  //[K]
T3=313.15;  //[K]
p1=999;  //[kg/m^3] - density of water at temperature T1
p2=996.0;  //[kg/m^3] - density of water at temperature T2
p3=992.1;  //[kg/m^3] - density of water at temperature T3
mu1=1.001;  //[cP] - viscosity of water at temperature T1
mu2=0.800;  //[cP] - viscosity of water at temperature T2
mu3=0.654;  //[cP] - viscosity of water at temperature T3
k1=0.63;  //[W/m*K] - thermal conductivity of water at temperature T1
k2=0.618;  //[W/m*K] - thermal conductivity of water at temperature T2
k3=0.632;  //[W/m*K] - thermal conductivity of water at temperature T3
cp1=4182;  //[J/kg*K] - heat capacity of water at temperature T1
cp2=4178;  //[J/kg*K] - heat capacity of water at temperature T2
cp3=4179;  //[J/kg*K] - heat capacity of water at temperature T3
Npr1=6.94;  // prandtl no. at temperature T1
Npr2=5.41;  // prandtl no. at temperature T2
Npr3=4.32;  // prandtl no. at temperature T3
// (a)  Dittus -Boelter-this correction evalutes all properties at the mean bulk temperature,which is T1
kmb=0.603
h=(kmb/d)*0.023*((Nre)^(0.8))*((Npr1)^0.4);
printf("\n\n (a) Dittus -Boelter\n the heat transfer coefficient is \n h = %f W/m^2*K = %f Btu/ft^2*h^-1*degF",h,h*0.17611);
// (b) Seider Tate-this correlation evaluates all the properties save muw at the mean bulk temperature 
h=(kmb/d)*(0.027)*((Nre)^0.8)*((Npr1)^(1/3))*((mu1/mu3)^0.14);
printf("\n\n (b) Seider Tate\n the heat transfer coefficient is \n h = %f W/m^2*K = %f Btu/ft^2*h^-1*degF",h,h*0.17611);
// (c) Sleicher-Rouse equation
a=0.88-(0.24/(4+Npr3));
b=(1/3)+0.5*exp((-0.6)*Npr3);
Nref=Nre*(mu1/mu2)*(p2/p1);
Nnu=5+0.015*((Nref)^a)*((Npr3)^b);
h=Nnu*(kmb/d);
printf("\n\n (c) Sleicher-Rouse equation\n the heat transfer coefficient is \n h = %f W/m^2*K = %f Btu/ft^2*h^-1*degF",h,h*0.17611);
// (d) Colbum Analogy- the j factor for heat transfer is calculated
jh=0.023*((Nref)^(-0.2));
Nst=jh*((Npr2)^(-2/3));
U=(Nre*mu1*10^-3)/(d*p1);
h=Nst*(p1*cp1*U);
printf("\n\n (d) Colbum Analogy\n the heat transfer coefficient is \n h = %f W/m^2*K = %f Btu/ft^2*h^-1*degF",h,h*0.17611);
// (e) Friend-Metzner
f=0.005227;
Nnu=((Nre)*(Npr1)*(f/2)*((mu1/mu3)^0.14))/(1.20+((11.8)*((f/2)^(1/2))*(Npr1-1)*((Npr1)^(-1/3))));
h=Nnu*(kmb/d);
printf("\n\n (e) Friend-Metzner\n the heat transfer coefficient is \n h = %f W/m^2*K = %f Btu/ft^2*h^-1*degF",h,h*0.17611);
// (f) Numerical analysis
Nnu=320;
h=Nnu*(kmb/d);
printf("\n\n (f) Numerical analysis\n the heat transfer coefficient is \n h = %f W/m^2*K = %f Btu/ft^2*h^-1*degF",h,h*0.17611);




