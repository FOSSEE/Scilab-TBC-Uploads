clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 11.1   Page 680 \n'); //Example 11.1
// Tube Length to achieve a desired hot fluid temperature

//Operating Conditions
Tho = 60+273    ;//[K] Hot Fluid outlet Temperature
Thi = 100+273   ; //[K] Hot Fluid intlet Temperature
Tci = 30+273    ;//[K] Cold Fluid intlet Temperature
mh = .1          ;//[kg/s] Hot Fluid flow rate
mc = .2          ;//[kg/s] Cold Fluid flow rate
Do = .045        ;//[m] Outer annulus
Di = .025        ;//[m] Inner tube

//Table A.5 Engine Oil Properties T = 353 K
cph = 2131              ;//[J/kg.K] Specific Heat
kh = .138               ; //[W/m.K] Conductivity
uh = 3.25*10^-2           ; //[N.s/m^2] Viscosity
//Table A.6 Saturated water Liquid Properties Tc = 308 K
cpc = 4178              ;//[J/kg.K] Specific Heat
kc = 0.625               ; //[W/m.K] Conductivity
uc = 725*10^-6           ; //[N.s/m^2] Viscosity
Pr = 4.85                ;//Prandtl Number

q = mh*cph*(Thi-Tho);

Tco = q/(mc*cpc)+Tci;

T1 = Thi-Tco;
T2 = Tho-Tci;
Tlm = (T1-T2)/(2.30*log10(T1/T2));

//Through Tube
Ret = 4*mc/(%pi*Di*uc);
printf("\n Flow through Tube has Reynolds Number as %i. Thus the flow is Turbulent", Ret);
//Equation 8.60
Nut = .023*Ret^.8*Pr^.4;
hi = Nut*kc/Di;

//Through Shell
Reo = 4*mh*(Do-Di)/(%pi*uh*(Do^2-Di^2));
printf("\n Flow through Tube has Reynolds Number as %i. Thus the flow is Laminar", Reo);
//Table 8.2
Nuo = 5.63;
ho = Nuo*kh/(Do-Di);

U = 1/[1/hi+1/ho];
L = q/(U*%pi*Di*Tlm);

printf("\n Tube Length to achieve a desired hot fluid temperature is %.1f m",L);
//END