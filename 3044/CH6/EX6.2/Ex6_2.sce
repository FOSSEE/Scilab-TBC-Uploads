// Variable declaration
Mean = 513.3           // Mean( in square feet)
std_dev = 31.5         // Standard deviation ( in square feet)
n = 40                 // Number of cans
x1 = 510.0             // lower limit of area (in square feet)
x2 = 520.0             // upper limit of area (in square feet)

// Calculation

// as we know      Z = (X-Mean) / (std_dev/sqrt(n))
Z1 =  ((x1-Mean) / (std_dev/sqrt(n)))          // Z value corresponding to lower limit   
Z2 =  ((x2-Mean) / (std_dev/sqrt(n)))          // Z value corresponding to upper limit   

// Using values of Z1 & Z2 from Table-3
P = 0.6553        // Requires probability (from Table-3)

// Result
printf ( "required probability: %.4f",P)
