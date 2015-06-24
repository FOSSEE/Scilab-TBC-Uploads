// Scilab code Exa4.5 : : Page 178 (2011)
clc; clear; 
I = 15.7;    // Ionisation potential of argon, eV
b = 0.025;            // Radius of the cathode, metre
a = 0.006e-02;        // Radius of the wire, metre
L = 7.8e-06;     // Mean free path, metre
V = round(I*a*log(b/a)/L);    // Avalanche voltage in G.M. tube, volt
printf("\nThe avalanche voltage in G.M. tube = %d volt", V);

// Result
// The avalanche voltage in G.M. tube = 729 volt 