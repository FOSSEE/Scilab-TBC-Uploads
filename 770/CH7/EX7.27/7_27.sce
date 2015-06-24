clear;
clc;

//Example - 7.27
//Page number - 261
printf("Example - 7.27 and Page number - 261\n\n");

//(a)
//This part involves proving a relation in which no numerical components are involved.
//For prove refer to this example 7.27 on page number 261 of the book.

//(b)
//This part involves proving a relation in which no numerical components are involved.
//For prove refer to this example 7.27 on page number 261 of the book.

//(c)
T = 300;//[K] - Temperature
P = 5;//[atm] - Pressure
P = P*101325;//[Pa]
Cp_0 = 35.78;//[J/mol-K] - Standard specific heat capacity at constant pressure
B = -50;//[cm^(3)/mol]
B = B*10^(-6);//[m^(3)/mol]

// (dB/dT) = 1.0 = dB_dT (say)
dB_dT = 1.0;//[cm^(3)/mol-K]
dB_dT = dB_dT*10^(-6);//[m^(3)/mol-K]

// (d^2 B/d T^2) = -0.01 = dB_dT_2 (say)
dB_dT_2 = -0.01;//[cm^(3)/mol-K^(2)]
dB_dT_2 = dB_dT_2*10^(-6);//[m^(3)/mol-K^(2)]

Cp = Cp_0 - P*T*(dB_dT_2);//[[J/mol-K]] - Specific heat capacity at constant pressure

//Therefore Joule-Thomson coefficient is given by,
meu = (1/Cp)*(-B + T*dB_dT);//[K/Pa]
meu = meu*10^(5);//[K/bar]

printf(" (c).The value of Joule-Thomson coefficient is %f J/bar",meu);

