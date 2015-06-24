// Scilab code Exa7.5.3: To calculate the voltage pulse of G.M. counter :P.no. 312 (2011)
 E_p = 30; // Energy required for one electron pair, eV
 E = 10e+06 ; // Energy lost by alpha particle, eV
 n = E/E_p; // Number of ion-pairs produced
 M = 5000; // Multiplication factor
 C = 50e-012; // Capacitance, F
 n_M = n*M; // Number of ion-pairs after multiplication
 e = 1.6e-019; // Charge of an electron, C
 Q = n_M*e; // Charge present in each ion
 A = Q/C; // Amplitude of voltage pulse, V
 printf("\n Amplitude of voltage pulse : %3.1f V", A)
// Result
 //     Amplitude of voltage pulse : 5.3 V
 










































































