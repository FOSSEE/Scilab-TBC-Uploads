clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 6.6   Page 379 \n'); //Example 6.6
// Water vapor conc and flux associated with the same location on larger surface of the same shape

//Operating Conditions
v = 100;        //[m/s]  Velocity of air
Tsurr = 20+273;    //[K] Surrounding Air Temperature
L1 = 1;      //[m] solid length
Ts = 80+273;    //[K] Surface Temp
qx = 10000;        //[W/m^2] heat flux at a point x
Txy = 60+273;        //[K] Temp in boundary layer above the point

//Table A.4 Air Properties at T = 323K
v = 18.2*10^-6;    //[m^2/s] Viscosity
k = 28*10^-3;      //[W/m.K] Conductivity
Pr = 0.7;          //Prandttl Number
//Table A.6 Saturated Water Vapor at T = 323K
pasat = 0.082;     //[kg/m^3]
Ma = 18;           //[kg/kmol] Molecular mass of water vapor
//Table A.8 Water Vapor-air at T = 323K
Dab = .26*10^-4;    //[m^2/s]

//Case 1
Casurr = 0;
Cas = pasat/Ma;        //[kmol/m^3] Molar conc of saturated water vapor at surface
Caxy = Cas + (Casurr - Cas)*(Txy - Ts)/(Tsurr - Ts);

//Case 2
L2 = 2;
hm = L1/L2*Dab/k*qx/(Ts-Tsurr);
Na = hm * (Cas - Casurr);


printf("\n (a) Water vapor Concentration above the point = %.4f Kmol/m^3 \n (b) Molar flux to a larger surface = %.2e Kmol/s.m^2", Caxy,Na);
//END