// Variable declaration
l = [2.4,2.9,2.7,2.6,2.9,2.0,2.8,2.2,2.4,2.4,2.0,2.5]            // list of lead concentration
x = [1,1,1,1,1.1,1,1,1,1.1,1.2,1.1,1]
n = 12                                                           // sample size

// Calculation
plot(l,x,"ro")
title("DOT DIAGRAM")
xlabel("$ Lead(micro gram/l$")

Mean = sum(l)/length(l)                                             // Mean of sample
Variance = (sum(l^2) - (sum(l)^2)/ n) / (n-1)           // Variance of sample

// Result
std_err = sqrt(Variance / n)                            // Estimated standard error
printf ( "Estimated standard error: %.3f",std_err)
