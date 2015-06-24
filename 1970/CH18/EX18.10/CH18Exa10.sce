// Scilab code Exa18.10 : : Page-767 (2011)
clc; clear;
m_mew = 106;        // Mass of mew lepton, mega electron volts per square c
m_tau = 1784;       // Mass of tau lepton, mega electron volts per square c
tau_mew = 2.2e-06;    // Mean life of mew lepton, sec
R = 16/100;           // Branching factor
tau_plus = R*(m_mew/m_tau)^5*tau_mew;        // Mean life for tau plus, sec
printf("\nThe mean life for tau plus : %3.1e sec", tau_plus);

// Result
// The mean life for tau plus : 2.6e-013 sec 