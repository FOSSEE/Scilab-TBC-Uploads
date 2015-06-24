clear;
clc;

// Stoichiometry
// Chapter 5
// Energy Balances


// Example 5.39
// Page 284
printf("Example 5.39, Page 284 \n \n");

// solution

To = 298.15
T1 = 483.15
// fi1 = intgr(from To to T1){12199.5+2241.4*10^-3*T+1557.7*10^-6*T^2-671.3*10^-9*T^3}dT
fi1 = 2455874.6  // kJ/h
dHr = 2*(-45.94)  // kJ/mol N2 reacted
fi2 = 91.88*1000*23.168
fi3 = fi1+fi2
// fi3 = intgr(from To to T2){10713.9+3841*10^-3*T+1278.8*10^-6*T^2-752.6*10^-9*T^3}dT 
// solving it
T2 = 657.41  // K
printf("Temperature of the gas mixture leaving the reactor = "+string(T2)+" K.")
