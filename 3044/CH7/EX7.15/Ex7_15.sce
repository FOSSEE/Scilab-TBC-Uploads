// Variable declaration
n = 30                     // sample size
Mean1 = 2.000              // sample mean
Mean2 = 2.010                 // sample mean
std_dev = 0.050              // standard deviation

// Calculation
// z(0.025) = 1.96
Z = 1.96

y1 = -Z + sqrt(n)*((Mean1-Mean2) / std_dev)           
y2 = Z + sqrt(n)*((Mean1-Mean2) / std_dev)           

// probability corresponding to Z>y1 is 0.614
p1 = 0.0015   // P(Z < Y1) = 0.001
p2 = 0.1945   // P(Z > Y2) = 0.194
p = p1 + p2

prob = 1 - p

// Result
printf ( "Type-2 error probability: %.3f",prob)
