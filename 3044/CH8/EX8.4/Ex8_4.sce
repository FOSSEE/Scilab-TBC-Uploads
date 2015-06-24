// Variable declaration

alpha = 0.05       //level of significance
n1 = 40            // size of sample-1
n2 = 40            // size of sample-2
std_dev1 = 27      // standard deviation-1
std_dev2 = 31      // standard deviation-2
Mean1 = 1647       // Mean of sample-1 ( in hours) 
Mean2 = 1638       // Mean of sample-2 ( in hours) 
delta1 = 0
delta2 = 16        // in hours

// Calculation
std_dev = sqrt( (std_dev1^2) + (std_dev2^2) )

Z = 1.645                                                 // at alpha = 0.05
Z1 = Z + sqrt(n1)*( (delta1 - delta2)/std_dev )       



// Probability of Z > -0.817 =0.793 
err_prob = 1 - 0.793                                      // type-2 error probability

// Result
printf ( "type-2 error probability: %.3f",err_prob)
