// Variable declaration
alpha = 2               // mean of normal distribution
beta = 0.1              // standard deviation of normal distribution

// Calculation



// we need to find p(Io/Ii) = p( (ln(b)-alpha) / beta) - p( (ln(a)-alpha) / beta)
a = 6.1                                        // lower limit
b = 8.2                                        // upper limit

Z1 = (log(b) - alpha)/(0.1)            // Z value correponding to upper limit
Z2 = (log(a) - alpha)/(0.1)            // Z value correponding to lower limit

p1 = 0.8413                                    // probability corresponding to Z1
p2 = 0.0274                                    // probability corresponding to Z2
p = p1 - p2                                   // Required probability

// Result
printf ( " required probability: %.4f",p)
