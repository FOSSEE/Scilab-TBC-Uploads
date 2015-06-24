clear;
clc;

//Example - 10.4
//Page number - 337
printf("Example - 10.4 and Page number - 337\n\n");

// Given
T = 35 + 273.15;//[K] - Temperature
P = 10;//[atm] - Pressure
P = P*101325;//[Pa]
// Methane obeys the equation of state
// Z = 1 + (P*B)/(R*T)

// At 35 C,
B = -50;//[cm^(3)/mol]
dB_dT = 1.0;//[cm^(3)/mol-K] - dB/dT
dB_dT = dB_dT*10^(-6);//[m^(3)/mol-K]
d2B_dT2 = -0.01;//[cm^(3)/mol-K^(2)] - d^2(B)/d(T^2)
d2B_dT2 = d2B_dT2*10^(-6);//[m^(3)/mol-K^(2)]

// Ideal gas molar heat capacity of methane is given by
// Cp_0 = 4.75 + 1.2*10^(-2)*T + 0.303*10^(-5)*T^(2) - 2.63*10^(-9)*T^(3)

// The molar heat capacity is given by
// Cp = Cp_0 + Cp_R
// For virial gas equation of state 
Cp_R = -P*T*d2B_dT2;//[J/mol-K]

// thus heat capacity is given by 
// Cp = a + b*T + c*T^(2) + d*T^(3) - P*T*d2B_dT2
// Putting the values, we get
Cp = (4.75 + 1.2*10^(-2)*T + 0.303*10^(-5)*T^(2) - 2.63*10^(-9)*T^(3))*4.184 - P*T*d2B_dT2;//[J/mol-K]

printf(" The molar heat capacity of methane is %f J/mol-K\n",Cp);



