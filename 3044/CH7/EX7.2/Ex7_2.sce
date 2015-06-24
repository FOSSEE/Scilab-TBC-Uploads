// Variable declaration
n = 150
std_dev = 6.2                              // Standard deviation

// as alpha = 0.01  , z(alpha/2) = 2.575
Z = 2.575                                  // Z value

// Calculation
E = (Z*std_dev)/sqrt(n)

// Result
printf ( "Maximum Error: %.2f",E)
