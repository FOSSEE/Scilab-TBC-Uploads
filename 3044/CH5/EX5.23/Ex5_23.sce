// Variable declaration
Mean1 = 35             // Mean time in coating process( in minutes)
Variance1 = 11         // variance of time in coating process( in minutes)

Variance2 = 5          // variance of time in rinse process( in minutes)
Mean2 = 8              // Mean time in rinse process( in minutes)

// Calculation
Mean = Mean1 + Mean2                      // Mean of total time
Variance = Variance1 + Variance2          // Variance of total time
std_dev = sqrt(Variance)             // standard deviation

// Result
printf ( "Total Mean time: %d minutes",Mean)
printf ( "Standard Deviation of Total time: %d minutes",std_dev)
