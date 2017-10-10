clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 7.7   Page 443 \n'); //Example 7.7
// Air side Convection coefficient and Heat rate
// pressure Drop

//Operating Conditions
v = 6;            //[m/s] Air velocity
Tsurr = 15+273;    //[K] Surrounding Air Temperature
D = .0164;         //[m] Diameter of tube
Ts = 70+273;        //[K] Temp of tube
//Staggered arrangement dimensions
St = .0313;        //[m]
Sl = .0343;        //[m]

//Table A.4 Air Properties T = 288 K
rho = 1.217;        //[kg/m^3] Density
cp = 1007;          //[J/kg.K] specific heat
uv = 14.82*10^-6;         //[m^2/s] Kinematic Viscosity
k = 25.3*10^-3;           //[W/m.K] Thermal conductivity
Pr = .71;                //Prandtl Number
//Table A.4 Air Properties T = 343 K
Pr2 = .701;                //Prandtl Number
//Table A.4 Air Properties T = 316 K
uv3 = 17.4*10^-6;         //[m^2/s] Kinematic Viscosity
k3 = 27.4*10^-3;           //[W/m.K] Thermal conductivity
Pr3 = .705;                //Prandtl Number

Sd = [Sl^2 + (St/2)^2]^.5;
Vmax = St*v/(St-D);

Re = Vmax*D/uv;        //Reynolds number

C = .35*(St/Sl)^.2;
m = .6;
C2 = .95;
N = 56;
Nt = 8;
//Using Equation 7.64 & 7.65
Nu = C2*C*Re^m*Pr^.36*(Pr/Pr2)^.25;
h = Nu*k/D;

//From Eqnn 7.67
Tso = (Ts-Tsurr)*exp(-(%pi*D*N*h)/(rho*v*Nt*St*cp));
Tlm = ((Ts-Tsurr) - Tso)/(2.30*log10((Ts-Tsurr)/Tso));
q = N*(h*%pi*D*Tlm);

Pt = St/D;
//From Fig 7.14
X = 1.04;
f = .35;
NL = 7;
press = NL*X*(rho*Vmax^2/2)*f;

printf("\n Air side Convection coefficient h = %.1f W/m^2.k and Heat rate q = %.1f kW/m \n Pressure Drop = %.2e bars",h,q/1000,press/100000);

//END