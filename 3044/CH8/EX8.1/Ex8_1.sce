// Variable declaration
data = [ 45 204.4 13825.3; 55 130.0  8632.0]
size = data(1:2,1)
Mean = data(1:2,2)
variance = data(1:2,3)
alpha = 0.05             // level of significance
Z = 1.96                 // z value corresponding to alpha/2

// Calculation

y1 = (Mean(1) - Mean(2)) - ( Z* (sqrt( variance(1)/size(1) + variance(2)/size(2) )) )                          // Lower limit
y2 = (Mean(1) - Mean(2)) + ( Z* (sqrt( (variance(1))/size(1) + (variance(2))/size(2) )) )            // upper limit


// Result
printf ( "95 percent confidence interval(in kWh per month): ( %.2f , %.2f )",y1,y2)
