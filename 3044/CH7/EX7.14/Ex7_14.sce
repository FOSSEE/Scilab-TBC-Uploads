// Variable declaration
n = 15                     // sample size
Mean1 = 75.20              // sample mean
Mean2 = 77                 // sample mean
std_dev = 3.6              // standard deviation

// Calculation
// z(0.05) = 1.645
Z = 1.645

y1 = Z + sqrt(n)*((Mean1-Mean2) / std_dev)           // lower limit of range

// probability corresponding to Z>y1 is 0.614
p = 0.614   // P(Z > -0.219) = 0.614

prob = 1 - p

// Result
printf ( "Type-2 error probability: %.3f",prob)
