// Scilab code Exa3.2.5 To calculate the mass of decayed radioactive material: Page 126 (2011)
t_h =  1600; // Half life of radioactive material, years
t = 2000; // Totaltime, years
lambda = 0.6931/t_h; // Decay constant, years^-1
m0 = 1; // The mass of radioactive substance at t0, mg
m = m0* %e^(-(lambda*t)); // Ratio of total number of atoms and number of atoms disintegrat, mg
A = 1-m; // The amount of radioactive substance decayed, mg
printf("\nThe amount of radioactive substance decayed : %6.4f mg",A)
//   Result
//     The amount of radioactive substance decayed : 0.5795 mg
