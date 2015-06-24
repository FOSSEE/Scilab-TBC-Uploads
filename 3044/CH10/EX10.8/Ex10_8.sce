// Variable declaration
n1 = 200             // sample-1 size
n2 = 400             // sample-2 size
p1 = 16.0/200
p2 = 14.0/400
alpha = 0.01         // level of significance

Z = 1.96             // Z value at alpha/2

// Calculation
// we need to find confidence interval for p1-p2
y1 = (p1-p2) - (Z* (sqrt( (p1*(1-p1))/n1 + (p2*(1-p2))/n2 )))        // Lower limit
y2 = (p1-p2) + (Z* (sqrt( (p1*(1-p1))/n1 + (p2*(1-p2))/n2 )))        // Upper limit

// Result
printf ( "95%% confidence interval for (p1-p2) : ( %.3f , %.3f )",y1,y2)
