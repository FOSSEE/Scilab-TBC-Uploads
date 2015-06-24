

// Display mode
mode(0);

// Display warning for floating point exception
ieee(1);

clc;
disp("Principles of Heat Transfer, 7th Ed. Frank Kreith et. al Chapter - 7 Example # 7.2 ")

//Diameter of wire in m
D = 0.000025;
//Length of wire in m
L = 0.006;
//Free stream temperature of air in degeee C
T = 20;
//Wire temperature to be maintain in degree C
Tw = 230;
//Resistivity of platinum in ohm-cm
Re = 0.0000171;

//Since the wire is very thin, conduction along it can be neglected; also, the temperature gradient in the wire at any cross section can be disregarded.

//At freestream temperature, for air:

//Thermal conductivity in W/mC
k = 0.0251;
//Kinematic viscosity in m2/s
nu = 0.0000157;

//Reynolds number at velocity = 2m/s
Rey = (2*D)/nu;
if Re<40 then
  //Using the correlation equa-tion from Eq. (7.3) and Table 7.1
  //Average convection heat transfer coefficient as a function of velocity
  //is
  //hc=799U^0.4 W/m2C

  //At this point, it is necessary to estimate the heat transfer coefficient for radiant heat flow.
  //According to Eq. (1.21), we have approximately
  //hr=sigma*epsilon*((Ts+Tinfinity)^3)/4

  //The emissivity of polished platinum from Appendix 2, Table 7 is about 0.05, so hr is about 0.05 W/m2C.

  //The rate at which heat is transferred from the wire is therefore
  //0.0790U^4 W.

  //The electrical resistance of the wire in ohm is
  R = ((Re*L)*4)/(((100*%pi)*D)*D);
end;

//A heat balance with the current i gives
disp("Current in ampere as a function of velocity is")
disp("i=0.19*U^0.2")
