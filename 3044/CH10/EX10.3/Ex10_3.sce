// Variable declaration
E = 0.04            // Maximum Error
alpha = 0.05
Z = 1.96            // Z value corresponding to alpha/2

// Calculation

// Part-A
n1 = ((Z/E)^2)/4              // Sample size
n1 = ceil(n1)

// Part-B
p = 0.12
n2 = ((Z/E)^2)*p*(1-p)              // Sample size
n2 = ceil(n2)

// Result
printf ( "Part(A): sample size: %d",n1)
printf ( "Part(B): sample size: %d",n2)
