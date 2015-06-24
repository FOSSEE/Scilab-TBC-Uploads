// Variable declaration
E = 0.50                                   // Atmost error
std_dev = 1.6                              // Standard deviation

// as alpha = 0.05  , z(alpha/2) = 1.96
Z = 1.96                                   // Z value

// Calculation
n =  ((Z*std_dev) / E)^2                // Sample size

// Result
printf ( "Sample size: %.1f",n)

// Note : Answer may vary because of rounding error.
