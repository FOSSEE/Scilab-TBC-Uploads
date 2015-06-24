// Scilab code Exa6.9.2 : To calculate the w/B ratio for a completely stripped nitrogen to move in a stable orbit : Page 274(2011)
E_k = 1200; // Kinetic energy of the proton, MeV
q = 7; // Number of proton in nitrogen
E_r = 13040 //  Rest mass energy of the electron, MeV
E = (E_k+E_r)*1.6e-013; // Total energy,j
c = 3e+08; // Velocity of light, m/s
R_w_B = q*1.6e-019*c^2/E; // Ratio of w/B, m^2/W  
printf("\nThe ratio of w/B :  %4.2e m^2/W ", R_w_B)
// Result
//      The ratio of w/B :  4.42e+007 m^2/W 