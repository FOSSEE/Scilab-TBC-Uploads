// Variable declaration
n = 20           // sample size
var_pop = 0.000126           // variance of population
var_samp = 0.0002            // variance of sample

// Calculation
chi_square = ((n-1)*var_samp) / var_pop           // chi square value

// From Table-5 for v = 19 and alpha = 0.05, chi_square(thoeritical) = 30.1, thus probability will be less than 0.05

// Result
printf ( "chi square value: %.1f",chi_square)
printf ( "probability of rejection of shipment is less than 0.05")
