clear;
clc;

//Example - 7.7
//Page number - 241
printf("Example - 7.7 and Page number - 241\n\n");

//Given
T = 25 + 273.15;//[K] - Temperature of the surrounding
P_1 = 1;//[atm] - Initial pressure
P_2 = 1000;//[atm] - Final pressure

// V = 18.066 - 7.15*10^(-4)*P + 4.6*10^(-8)*P^(2)    where, V is in 'cm^(3)/mol' and P is in 'atm
// (dV/dT)_P = 0.0045 + 1.4*10^(-6)*P    ;//cm^(3)/mol-K

// The work done by 1 mol is given by W = integral(P*dV)
// Differentiating both sides of the expression for V, we get
// dV = -7.15*10^(-4)*dP + 9.2*10^(-8)*(P*dP) 
// P*dV = -7.15*10^(-4)*P*dP + 9.2*10^(-8)*(P^(2)*dP)

// The work done is given by
W = integrate('-7.15*10^(-4)*P + 9.2*10^(-8)*(P^(2))','P',P_1,P_2);//[atm-cm^(3)/mol]
W = W*101325*10^(-6);//[J/mol]

printf("The necessary work to compress water from 1 atm to 1000 atm is  %f J/mol\n\n",W);

//Let us calculate the amount of heat transfer
// q = integral(T*dS)
// dS = ((ds/dT)_P)*dT + ((dS/dP)_T)*dP
// Since the temperature is constant the first term is zero and
// dS = ((dS/dP)_T)*dP = -((dV/dT)_P)*dP
// Thus, q = integral(T*dS) = T*(integral(dS))     ( as temperature is constant )
// or, q = -T*(integral((dV/dT)_P)*dP)

// Thus the heat transfer is given by
q = -T*integrate('0.0045+1.4*10^(-6)*P','P',P_1,P_2);//[atm-cm^(3)/mol]
q = q*101325*10^(-6);//[J/mol]

// q - W = delta_U
// Thus delta_U is given by
delta_U = q - W;//[J/mol]

printf("The change in internal energy is  %f J/mol",delta_U);

