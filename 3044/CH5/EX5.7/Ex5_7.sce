// Variable declaration
std_dev = 0.04      //standard deviation
x = 4               // number of ounces
p = 0.02            // probability of x <4

// Calculation

// as we know p = (x-Mean)/std_dev
// from Table-3 (page-514) we find closest value to 0.02 which is 0.0202 corresponding to Z = -2.05
Mean = 4 - (-2.05*0.04)            // from z=(x-mean)/std_dev

// Result
printf ( "Mean of given distribution: %.3f ounces",Mean)
