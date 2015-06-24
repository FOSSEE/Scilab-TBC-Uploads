// Variable declaration
Mean1 = 4                                         // Mean of X1
Variance1 = 9                                     // Variance of X1

Mean2 = -2                                        // Mean of X2
Variance2 = 5                                     // Variance of X2

// Calculation
// (A)  E(2*X1 + X2 - 5)
Mean = 2*Mean1 + Mean2 - 5                        // Required Mean

// (B)  Var(2*X1 + X2 - 5)
Variance = (2^2)*Variance1 + Variance2         // Required Variance

// Result
printf ( "Mean of (2*X1 + X2 - 5) : %d",Mean)
printf ( "Variance of (2*X1 + X2 - 5) : %d",Variance)
