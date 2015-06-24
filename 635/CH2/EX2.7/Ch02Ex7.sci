// Scilab Code Ex2.7  Bond formation Energy for K+ and Cl- ion pair: Page-70 (2010)
eps_0 = 8.854D-12; // Absolute electrical permittivity of free space, coulomb sqaure per newton per metre square
e = 1.6D-19; // Electronic charge, C
IP_K = 4.1; // Ionization potential of potassium, electron-volt
EA_Cl = 3.6; // Electron affinity of chlorine, electron-volt
delta_E = IP_K - EA_Cl; // Net energy required to produce the ion-pair, electron-volt
Ec = delta_E; // Coulomb energy equals net energy required to produce the ion pair, in electron-volt
// Since Ec = -e/(4*%pi*eps_0*R), solving for R
R = -e/(4*%pi*eps_0*Ec); // Separation between K+ and Cl- ion pair, m
disp(Ec,"The bond formation energy for K+ and Cl- ion pair, in eV, is : ");
disp(R/1D-10, "The separation between K+ and Cl- ion pair, in angstrom, is : ");

//Result 
// The bond formation energy for K+ and Cl- ion pair, in eV, is :    
// 0.5  
// The separation between K+ and Cl- ion pair, in angstrom, is :    
// - 28.760776 