// Variable declaration
v = 19                              // degree of freedom
Variance = 1.2* (10^-4)          // variance

// Calculation
// alpha = 0.05
chi_square1 = 8.907                 // chi square value at alpha/2 from table-5
chi_square2 = 32.852                // chi square value at 1-(alpha/2) from table-5

// we need to find limits of sigma

y1 = (v*Variance) / chi_square2            
y2 = (v*Variance) / chi_square1            

y1 =  sqrt(y1)            //lower limit
y2 =  sqrt(y2)            //upper limit

// Result
printf ( "95%% confidence interval: ( %.4f ,  %.4f )",y1,y2)
