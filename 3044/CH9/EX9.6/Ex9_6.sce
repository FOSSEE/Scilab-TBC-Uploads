// Variable declaration
v1 = 8                    // degree of freedom of sample-1
v2 = 8                    // degree of freedom of sample-2
alpha = 0.02              // level of significance
s1_square = 0.4548        // for sample-1 
s2_square = 0.1089        // for sample-2

// Calculation
// 98% confidence interval

f1 = 6.03                                    // f value at 0.01
f2 = 1 / 6.03                                // f value at 0.99

y1 = (f2)*(s2_square / s1_square)            // lower limit
y2 = (f1)*(s2_square / s1_square)            // upper limit

// Result
printf ( "98%% confidence interval: ( %.2f , %.2f )",y1,y2)
