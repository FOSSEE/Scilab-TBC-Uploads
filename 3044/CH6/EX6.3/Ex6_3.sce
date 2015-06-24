// Variable declaration
Mean = 12.40           // Mean( in minutes)
std_dev = 2.48         // Standard deviation ( in minutes)
n = 20                 // sample size
x = 10.63              // observes time( in minutes)

// Calculation
t = (x-Mean) / (std_dev/sqrt(n))        // t-value corresponding to observation
v = n-1                                 // degree of freedom

// corresponding to v = 19 , porbability that t will be below -2.861, is 0.005 (Table-4)
// As 0.005 is very small probability, so data tend to refute manufacturer's claim 

// Result
printf ( " The Data tend to refute manufacturers claim")
