// Variable declaration
n = 100             // total person
x = 36                 
alpha = 0.05

// Calculation
p = (x) / n                // probability
Z = 1.96                        // Z value corresponding to alpha/2

val = Z*( sqrt( p*(1-p)/n ) )           
lower = p - val
upper = p + val

// Result
printf ( "95%% confidence interval: ( %.3f , %.3f )",lower,upper)
