// Variable declaration
n = 10

// Calculation
l = [45 36; 73 60; 46 44; 124 119; 33 35; 57 51; 83 77; 34 29; 26 24; 17 11 ]
l1 = l(:,1)
l2 = l(:,2)
diff = l1 - l2       // diffrence in values
Mean = mean(diff)
std_dev = 4.08
t = 1.833

y1 = (Mean - t*std_dev/sqrt(n))    // Lower limit
y2 = (Mean + t*std_dev/sqrt(n))   // Lower limit


// Result
printf ( "95%% confidence interval(in gallons): ( %.1f , %.1f )",y1,y2)
