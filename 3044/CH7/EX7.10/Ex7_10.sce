// Variable declaration
Mean = 4.5                 // mean of normal distribution
std_dev = 1.5              // standard deviation of normal distribution
n = 25                     // number of vinyl specimens
x = 3.9

// Calculation
// corresponding to x = 3.9 ,  Z = (x-Mean) / (std_dev/sqrt(n))
Z = (x-Mean) / (std_dev/sqrt(n))           // Z value

// from Normal Table P(Z>2.00) = 0.0228 which is same as P(Z<-2.00)
p = 0.0228                                                              //  probability P(z<-2.00)
p_val = 2*p                                                             // Required P-Value

// Result
printf ( "P-Value: %.4f",p_val)
