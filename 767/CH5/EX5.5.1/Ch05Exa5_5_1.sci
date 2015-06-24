// Scilab code Exa5.5.1: To calculate the half value  thickness of Al for given radiation : P.no. 225 (2011)
x = 0.2; // Thickness of Al material , m
I_r = 3/100; // Intensity ratios, 
x_h = log(2)*x/log(1/I_r); // Half value thickness of Al, m
printf("\n  Half value thickness of Al : %6.4f m",x_h )
// Result
//      Half value thickness of Al : 0.0395 m 