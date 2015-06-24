// Variable declaration
n = 400                         // total person
x = 136                         // number of person answering yes

// Calculation
p = (x) / n                            // probability
Z = 2.575                                   // Z value corresponding to alpha/2

max_err = Z*( sqrt( p*(1-p)/n ) )           // maximum error

// Result
printf ( "Maximum error with 99%% confidence interval: %.3f",max_err)
