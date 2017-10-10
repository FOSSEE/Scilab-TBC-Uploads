clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 11.2   Page 683 \n'); //Example 11.2
// Exterior Dimensions of heat Exchanger
// Pressure drops within the plate-type Heat exchanger with N=60 gaps

//Operating Conditions
Tho = 60+273    ;//[K] Hot Fluid outlet Temperature
Thi = 100+273    ;//[K] Hot Fluid intlet Temperature
Tci = 30+273    ;//[K] Cold Fluid intlet Temperature
mh = .1          ;//[kg/s] Hot Fluid flow rate
mc = .2          ;//[kg/s] Cold Fluid flow rate
Do = .045        ;//[m] Outer annulus
Di = .025        ;//[m] Inner tube

//Table A.5 Engine Oil Properties T = 353 K
cph = 2131              ;//[J/kg.K] Specific Heat
kh = .138                ;//[W/m.K] Conductivity
uh = 3.25*10^-2           ; //[N.s/m^2] Viscosity
rhoh = 852.1            ;//[kg/m^3] Density
//Table A.6 Saturated water Liquid Properties Tc = 308 K
cpc = 4178              ;//[J/kg.K] Specific Heat
kc = 0.625                ;//[W/m.K] Conductivity
uc = 725*10^-6            ;//[N.s/m^2] Viscosity
Pr = 4.85                ;//Prandtl Number
rhoc = 994              ;//[kg/m^3] Density

q = mh*cph*(Thi-Tho);

Tco = q/(mc*cpc)+Tci;

T1 = Thi-Tco;
T2 = Tho-Tci;
Tlm = (T1-T2)/(2.30*log10(T1/T2));

N = linspace(20,80,100);
L = q/Tlm*[1/(7.54*kc/2)+1/(7.54*kh/2)]*(N^2-N)^-1;
clf();
plot(N,L);
xtitle("Size of Heat Xchanger vs Number of gaps", "Number of Gaps (N)", "L (m)");

N2 = 60;
L = q/((N2-1)*N2*Tlm)*[1/(7.54*kc/2)+1/(7.54*kh/2)];
a = L/N2;
Dh = 2*a        ;//Hydraulic Diameter [m]
//For water filled gaps
umc = mc/(rhoc*L^2/2);
Rec = rhoc*umc*Dh/uc;
//For oil filled gaps
umh = mh/(rhoh*L^2/2);
Reh = rhoh*umh*Dh/uh;
printf("\n Flow of the fluids has Reynolds Number as %.2f & %i. Thus the flow is Laminar for both", Reh,Rec);

//Equations 8.19 and 8.22a
delpc = 64/Rec*rhoc/2*umc^2/Dh*L        ;//For water
delph = 64/Reh*rhoh/2*umh^2/Dh*L        ;//For oil

//For example 11.1
L1 = 65.9;
Dh1c = .025;
Dh1h = .02;
Ret = 4*mc/(%pi*Di*uc);
f = (.790*2.30*log10(Ret)-1.64)^-2        ;//friction factor through tube Eqn 8.21
umc1 = 4*mc/(rhoc*%pi*Di^2);
delpc1 = f*rhoc/2*umc1^2/Dh1c*L1;
Reo = 4*mh*(Do-Di)/(%pi*uh*(Do^2-Di^2));
umh1 = 4*mh/(rhoh*%pi*(Do^2-Di^2));
delph1 = 64/Reo*rhoh/2*umh1^2/Dh1h*L1;

printf("\n Exterior Dimensions of heat Exchanger L = %.3f m \n Pressure drops within the plate-type Heat exchanger with N=60 gaps\n For water = %.2f N/m^2    For oil = %.2f N/m^2\n Pressure drops tube Heat exchanger of example 11.1\n For water = %.1f kN/m^2    For oil = %.1f kN/m^2",L,delpc,delph,delpc1/1000,delph1/1000);
//END