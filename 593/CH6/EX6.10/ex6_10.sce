clear;
//clc();

// Example 6.10
// Page: 120
printf("Example-6.10  Page no.-120\n\n");

//***Data***//
x_sulph = 0.6;
x_water = 0.4;
Temp = 200;//[F]
// At the 200F we have
h_water = 25;//[Btu/lbm]
h_sulph = -100;//[Btu/lbm]
// From equation 6.16 (as reporated in the book), rewritten for masses instead of moles we have 
h_solution = h_water*x_water+h_sulph*x_sulph;// [Btu/lbm]
printf("Enthalpy of the solution is %f Btu/lbm",h_solution);