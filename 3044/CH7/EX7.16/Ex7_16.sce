// Variable declaration

alpha = 0.05
beta = 0.10
Mean1 = 20          // mean corresponding to alpha
Mean2 = 21          // mean corresponding to beta
std_dev = 2.4       // standard deviation

// Calculation
Z1 = 1.645          // Z value corresponding to alpha=0.05
Z2 = 1.280          // Z value corresponding to beta=0.10

Size = ( (std_dev*(Z1 + Z2))/(Mean1 - Mean2))^2               // Minimum sample size

// Result
printf ( "Required sample size: %d",Size)

// Note: answer may vary because of rouding off error.
