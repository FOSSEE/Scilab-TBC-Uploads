clear;
//clc();

// Example 9.1
// Page: 219
printf("Example-9.1  Page no.-219\n\n");

//***Data***//
x_isopropanol = 0.4720;
x_water = 0.5280;
// From the table A.7 (page 427) reported in the book the Van Laar coefficients for isopropanol-water system at 1atm are given by
A = 1.0728;
B = 0.4750;
// Van Laar equations are given 
// log10(Y_a) = A*x_b^(2)/(A/B*x_a+x_b)^(2)
// log10(Y_b) = B*x_a^(2)/(B/A*x_b+x_a)^(2)
// We calculate Y_isopropanol and Y_water as
Y_isopropanol = 10^(A*x_water^(2)/(A/B*x_isopropanol+x_water)^(2));
Y_water = 10^(B*x_isopropanol^(2)/(B/A*x_water+x_isopropanol)^(2));
printf(" Value of the liquid-phase activity coefficient  for isopropanol is  %f\n\n",Y_isopropanol);
printf(" And value of the liquid-phase activity coefficient  for water is    %f",Y_water);
