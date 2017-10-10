// Calculating the heat radiated from the body
clc;
disp('Example 4.3, Page No. = 4.5')
// Given Data
e = 0.8;// Co-efficient of emissivity
T1 = 273+60;// Temperature of body in degree kelvin
T0 = 273+20;// Temperature of walls in degree kelvin
// Calculation of the heat radiated from the body
q_rad = 5.7*10^(-8)*e*(T1^(4)-T0^(4));// Heat radiated from the body
disp(q_rad,'Heat radiated from the body(Watt per square meter)=');
//in book answer is 224.6 in Watt per square meter.  The answers vary due to round off error
