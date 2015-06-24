

// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat Transfer, 7th Ed. Frank Kreith et. al Chapter - 8 Example # 8.3 ")

//Airflow rate in kg/s
mair = 0.75;
//Inlet temperature of air in degree K
Tairin = 290;
//Hot gas flow rate in kg/s
mgas = 0.6;
//Inlet temperature of hot gases in degree K
Tgasin = 1150;
//wetted perimeter on air side in m
Pa = 0.703;
//wetted perimeter on gas side in m
Pg = 0.416;
//cross-sectional area of gas passage (per passage) in m2
Ag = 0.0016;
//cross-sectional area of air passage (per passage) in m2
Aa = 0.002275;
//heat transfer surface area in m2
A = 2.52;

//Given that unit is of the cross-flow type, with both fluids unmixed.

//length of air duct in m
La = 0.178;
//hydraulic diameter of air duct in m
Dha = (4*Aa)/Pa;
//length of gas duct in m
Lg = 0.343;
//hydraulic diameter of gas duct in m
Dhg = (4*Ag)/Pg;

//The heat transfer coefficients can be evaluated from Eq. (6.63) for flow
//in ducts.
//Heat transfer coefficient for air in W/m2K
ha = La/Dha;
//Heat transfer coefficient for gas in W/m2K
hg = Lg/Dhg;

//Assuming the average air-side bulk temperature to be 573 K and the average
//gas-side bulk temperature to be 973 K, the properties at those temperatures are, from Appendix 2, Table 28.

//Specific heat of air in J/kgK
cair = 1047;
//Thermal conductivity of air in W/mK
kair = 0.0429;
//Dynamic viscosity of air in Ns/m2
muair = 0.0000293;
//Prandtl number of air
Prair = 0.71;

//Specific heat of hot gas in J/kgK
cgas = 1101;
//Thermal conductivity of hot gas in W/mK
kgas = 0.0623;
//Dynamic viscosity of hot gas in Ns/m2
mugas = 0.00004085;
//Prandtl number of hot gas
Prgas = 0.73;

//The mass flow rates per unit area in kg/m2s
//mass flow rate of air in kg/m2s
mdotair = mair/(19*Aa);
//mass flow rate of gas in kg/m2s
mdotgas = mgas/(18*Ag);

//The Reynolds numbers are
//Reynolds number for air
Reair = (mdotair*Dha)/muair;
//Reynolds number for gas
Regas = (mdotgas*Dhg)/mugas;

//Using Eq. (6.63), the average heat transfer coefficients in W/m2K
hair = (((0.023*kair)*(Reair^0.8))*(Prair^0.4))/Dha;

//Since La/DHa=13.8, we must correct this heat transfer coefficient for
//entrance effects, per Eq. (6.68). The correction factor is 1.377.
//Corrected heat transfer coefficient of air in W/m2K
hair = 1.377*hair;

//Similarly for hot gas
//Heat transfer coefficient in W/m2K
hgas = (((0.023*kgas)*(Regas^0.8))*(Prgas^0.4))/Dhg;
//Correction factor=1.27;
//Corrected heat transfer coefficient of gas in W/m2K
hgas = 1.27*hgas;

//Overall conductance in W/K
UA = 1/(1/(hair*A)+1/(hgas*A));

//The number of transfer units, based on the gas, which has the smaller heat capacity rate
NTU = UA/(mgas*cgas);

//The heat capacity-rate ratio
Z = (mgas*cgas)/(mair*cair);

//and from Fig. 8.21, the effectiveness is approximately 0.13.
//Effectiveness
E = 0.13;

disp("Gas outlet temperature in degree K")
//Gas outlet temperature in degree K
Tgasout = Tgasin-E*(Tgasin-Tairin)

disp("Air outlet temperature in degree K")
//Gas outlet temperature in degree K
Tairout = Tairin+(Z*E)*(Tgasin-Tairin)
