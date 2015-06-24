//Variable Declaration
n = 3   // no of tosses
p0 = (0.5)*(0.5)*(0.5)       // probability of Number of heads=0
p1 = 3*(0.5)*(0.5)*(0.5)     // probability of Number of heads=1
p2 = 3*(0.5)*(0.5)*(0.5)     // probability of Number of heads=2
p3 = (0.5)*(0.5)*(0.5)       // probability of Number of heads=3

//Calculation
// As we know, mean = Sum(x*P(x))
mean_head = (p0)*0 + (p1)*1 + (p2)*2 + (p3)*3    // mean of number of heads

//Results
printf ( "Mean of number of heads in 3 flips: %.2f",mean_head)
