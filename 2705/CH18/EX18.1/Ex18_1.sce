clear;
clc;
disp('Example 18.1');

// aim : To determine
// (a) the coefficient of performance
// (b) the mass flow of the refrigerant
// (c) the cooling water required by the condenser

// given values
P1 = 462.47;// pressure limit, [kN/m^2]
P3 = 1785.90;// pressure limit, [kN/m^2]
T2 = 273+59;// entering saturation temperature, [K]
T5 = 273+32;// exit temperature of condenser, [K]
d = 75*10^-3;// bore, [m]
L = d;// stroke, [m]
N = 8;// engine speed, [rev/s]
VE = .8;// olumetric efficiency
cpL = 1.32;// heat capacity of liquid, [kJ/kg K]
c = 4.187;// heat capacity of water, [kj/kg K]

// solution
// from given table
// at P1
h1 = 231.4;// specific enthalpy, [kJ/kg]
s1 = .8614;// specific entropy,[ kJ/kg K
v1 = .04573;// specific volume, [m^3/kg]

// at P3
h3 = 246.4;// specific enthalpy, [kJ/kg]
s3 = .8093;// specific entropy,[ kJ/kg K
v3 = .04573;// specific volume, [m^3/kg]
T3= 273+40;// saturation temperature, [K]
h4 = 99.27;// specific enthalpy, [kJ/kg]
// (a)
s2 = s1;// specific entropy, [kJ/kg k]
// using s2=s3+cpv*log(T2/T3)
cpv = (s2-s3)/log(T2/T3);// heat capacity, [kj/kg k]

// from Fig.18.8
T4 = T3;
h2 = h3+cpv*(T2-T3);// specific enthalpy, [kJ/kg]
h5 = h4-cpL*(T4-T5);// specific enthalpy, [kJ/kg]
h6 = h5;
COP = (h1-h6)/(h2-h1);// coefficient of performance
mprintf('\n (a) The coefficient of performance of the refrigerator is  =  %f\n',COP);

// (b)
SV = %pi/4*d^2*L;// swept volume of compressor/rev, [m^3]
ESV = SV*VE*N*3600;// effective swept volume/h, [m^3]
m = ESV/v1;// mass flow of refrigerant/h,[kg]
mprintf('\n (b) The mass flow of refrigerant/h is  =  %f  kg\n',m);

// (c)
dT = 12;// temperature limit, [C]
Q = m*(h2-h5);// heat transfer in condenser/h, [kJ]
// using Q=m_dot*c*dT, so
m_dot = Q/(c*dT);// mass flow of water required, [kg/h]
mprintf('\n (c) The mass flow of water required is  =  %f kg/h\n',m_dot);

//  End
