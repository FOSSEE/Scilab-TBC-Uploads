clear;
clc;
disp('Example 18.2');

// aim : To determine
// (a) the mass flow of R401
// (b) the dryness fraction of  R401 at the entry to the evaporator
// (c) the power of driving motor
// (d) the ratio of heat transferred from condenser to the power required to the motor

// given values
P1 = 411.2;// pressure limit, [kN/m^2]
P3 = 1118.9;// pressure limit, [kN/m^2]
Q = 100*10^3;// heat transfer from the condenser,[kJ/h]
T2 = 273+60;// entering saturation temperature, [K]

// given
// from given table
// at P1
h1 = 409.3;// specific enthalpy, [kJ/kg]
s1 = 1.7431;// specific entropy,[ kJ/kg K

// at P3
h3 = 426.4;// specific enthalpy, [kJ/kg]
s3 = 1.7192;// specific entropy,[ kJ/kg K
T3 = 273+50;// saturation temperature, [K]
h4 = 265.5;// specific enthalpy, [kJ/kg]
// (a)
s2 = s1;// specific entropy, [kJ/kg k]
// using s2=s3+cpv*log(T2/T3)
cpv = (s2-s3)/log(T2/T3);// heat capacity, [kj/kg k]

// from Fig.18.8
h2 = h3+cpv*(T2-T3);// specific enthalpy, [kJ/kg]
Qc = h2-h4;// heat transfer from condenser, [kJ/kg]
mR401 = Q/Qc;// mass flow of R401, [kg]
 mprintf('\n (a) The mass flow of R401 is  =  %f kg/h\n',mR401);

// (b)
hf1 = 219;// specific enthalpy, [kJ/kg]
h5 = h4;
// using h5=hf1+s5*(h1-hf1),so
x5 = (h5-hf1)/(h1-hf1);// dryness fraction
mprintf('\n (b) The dryness fraction of R401 at the entry to the evaporator is  =  %f\n',x5);

// (c)
P = mR401*(h2-h1)/3600/.7;// power to driving motor, [kW]
 mprintf('\n (c) The power to driving motor is  =  %f kW\n',P);

// (d)
r = Q/3600/P;// ratio
mprintf('\n (d) The ratio of heat transferred from condenser to the power required to the motor is  =  %f : 1\n',r);

//  End
