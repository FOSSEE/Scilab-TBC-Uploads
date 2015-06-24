// Variable declaration
n = 50                                // sample size
Mean = 305.58                         // sample mean(in nm)
std_dev = 36.97                       // standard deviation(in nm)

// Calculation
// as alpha = 0.01  , z(alpha/2) = 2.575
Z = 2.575

y1 = Mean - Z*(std_dev / sqrt(n))           // lower limit of range
y2 = Mean + Z*(std_dev / sqrt(n))           // upper limit of range

// Result
printf ( "99%% confidence interval(in nm): ( %.2f , %.2f )",y1,y2)
