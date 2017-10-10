clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 11.6   Page 702 \n'); //Example 11.6
// Gas-side overall heat transfer coefficient. Heat exchanger Volume

//Operating Conditions
hc = 1500        ;//[W/m^2.K] Coefficient of heat transfer for outer surface
hi = hc;
Th = 825    ;//[K] Hot Fluid Temperature
Tci = 290    ;//[K] Cold Fluid intlet Temperature
Tco = 370    ;//[K] Cold Fluid outlet Temperature
mc = 1          ;//[kg/s] Cold Fluid flow rate
mh =  1.25          ;//[kg/s] Hot Fluid flow rate
Ah = .20            ;//[m^2] Area of tubes
Di = .0138        ;//[m] diameter of tube
Do = .0164        ;//[m] Diameter
//Table A.6 Saturated water Liquid Properties Tf = 330 K
cpw = 4184         ;     //[J/kg.K] Specific Heat
//Table A.1 Aluminium Properties T = 300 K
k = 237             ;   //[W/m.K] Conductivity
//Table A.4 Air Properties Tf = 700 K
cpa = 1075         ;     //[J/kg.K] Specific Heat
u = 33.88*10^-6    ;        //[N.s/m^2] Viscosity
Pr = .695          ;      // Prandtl number

//Geometric Considerations
si = .449;
Dh = 6.68*10^-3        ;//[m] hydraulic diameter
G = mh/si/Ah;
Re = G*Dh/u;
//From Figure 11.16
jh = .01;
hh = jh*G*cpa/Pr^.66667;

AR = Di*2.303*log10(Do/Di)/(2*k*(.143));
//Figure 11.16
AcAh = Di/Do*(1-.830);
//From figure 3.19
nf = .89;
noh = 1-(1-.89)*.83;

U = [1/(hc*AcAh) + AR + 1/(noh*hh)]^-1;

Cc = mc*cpw;
q = Cc*(Tco-Tci);
Ch = mh*cpa;
qmax = Ch*(Th-Tci);
e = q/qmax;
ratio = Ch/Cc;

printf("\n As effectiveness is %.2f with Ratio Cmin/Cmax = %.2f, It follows from figure 11.14 that NTU = .65",e,ratio);
NTU = .65;
A = NTU*Ch/U;
//From Fig 11.16
al = 269;            //[m^-1] gas side area per unit heat wxchanger volume
V = A/al;

printf("\n Gas-side overall heat transfer coefficient.r = %i W/m^2.K\n Heat exchanger Volume = %.3f m^3",U,V);
//END;