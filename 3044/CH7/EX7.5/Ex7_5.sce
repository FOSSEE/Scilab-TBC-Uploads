// Variable declaration
n = 100                                // sample size
Mean = 21.6                           // sample mean
std_dev = 5.1                        // standard deviation

// Calculation
// as alpha = 0.05  , z(alpha/2) = 1.96
Z = 1.96

y1 = Mean - Z*(std_dev / sqrt(n))           // lower limit of range
y2 = Mean + Z*(std_dev / sqrt(n))           // upper limit of range

// Result
printf ( "95%% confidence interval: ( %.2f , %.2f )",y1,y2)
