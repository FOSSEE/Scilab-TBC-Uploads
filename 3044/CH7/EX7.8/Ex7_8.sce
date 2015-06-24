// Variable declaration
count = [7,3,1,2,4,1,2,3,1,2]                                               // count list for 10 days

// Calculation
lembda = (sum(count)) / length(count)                                     // maximaum likelihood estimate of lembda

// we need to find P(x=0 or x=1) using poisson distribution
p = exp(-lembda) + (exp(-lembda) * lembda) / factorial(1)              // maximum estimated probability

// Result
printf ( "Maximum estimated probability: %.3f",p)
