// Scilab Code Ex2.2 Conversion of eV into kcal/mol: Page-64 (2010)
e = 1.6D-19; // Electronic charge, C
N = 6.023D+23; // Avogadro's number
J = 4.184D+3; // Joule's mechanical equivalent of heat
V = 1;    // Potential difference, V
eV = e*V; // Energy equivalent of 1 electron-volt, J
eVpm = eV*N; // Electron-volt per mole, J/mol
Ecal = eVpm/J; // Energy equivalent of 1eV, kcal/mole
printf("\n1 eV is approximately equal to %6.3f kcal/mol", Ecal);
  
//Result 
//    1 eV is approximately equal to 23.033 kcal/mol
