// Scilab code Exa2.3.1 To calculate the mass of decayed radioactive material: Page 126 (2011)
t_prime =  1600; // Half life of radioactive material, years
t = 2000; // Total time, years
lambda = 0.6931/t_prime; // Decay constant, years^(-1)
m0 = 1; // The mass of radioactive substance at t0, mg
m = m0* %e^(-(lambda*t)); // Ratio of total number of atoms and number of atoms disintegrat, mg
a = 1-m; // The amount of radioactive substance decayed, mg 
printf("\nThe amount of radioactive substance decayed : %6.4f mg", a)

//   Result    
//  The amount of radioactive substance decayed : 0.5795 mg 