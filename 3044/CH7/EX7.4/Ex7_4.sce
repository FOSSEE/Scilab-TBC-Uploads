// Variable declaration
n = 6                                               // number of observations
std_dev = 0.14                                      // standard deviation(in degree)
// as alpha = 0.02  , t(alpha/2) = 3.365 for v = 5

// Calculation
t = 3.365                                           // i.e. t(0.01) for v=5
std_err = (t*std_dev) / sqrt(n)                     // estimated standard error

// Result
printf ( "Maximum error: %.2f degree",std_err)
