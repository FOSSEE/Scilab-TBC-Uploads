clear;
//clc();

// Example 11.6
// Page: 283
printf("Example-11.6  Page no.-284\n\n");

//***Data***//

T = 92 + 273.15;//[K] Temperature of the system
R = 8.314;//[m^(3)*Pa/(mol*K)] universal gas constant
// Van Laar equation coefficients are given
A = 1.2739;
B = 3.9771;


// From van laar equation, for water, we have
// lnY_a = B^(2)*A*(1-x_a)^(2)/(A*x_a + B*(1-x_a))^(2);
// Similarily for n-butanol
// lnY_b = A^(2)*B*x_a^(2)/(A*x_a + B*(1-x_a))^(2);

// Let us say,   g = g_mix - sum(x_i*g_i_0)
// So, plotting g vs x_i we have

deff("[y]=f(x_a)","y = (R*T/1000)*( x_a*log(x_a) + (1-x_a)*log(1-x_a) + x_a*(B^(2)*A*(1-x_a)^(2)/(A*x_a + B*(1-x_a))^(2)) + (1-x_a)*(A^(2)*B*x_a^(2)/(A*x_a + B*(1-x_a))^(2)) )")

x_a = [0.000001:0.01:0.99999];
fplot2d(x_a,f)
xlabel(" Mol fraction of species a, x_a");
ylabel(" g_mix - sum(x_i*g_i0)");

// Now drawing tangent 
x = [0.000001:0.01:0.99999];
plot2d(x,[1.2090312*x - 1.251495764])

// Figure shows the results of the calculation of the whole range of x_a 
// Drawing the tangent to the curve, the line touches the curve at two points x_a = 0.47 and 0.97
printf(" Thus based on the several assumptions that the Van Laar equation is an accurate representation of LLE,\n");
printf(" we would conclude that at 92 deg C water-n-butanol does form two liquid phases.");
