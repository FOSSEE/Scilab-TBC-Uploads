//Variable Declaration
N = 20       // Total car chargers
n = 10       // Number of selected car chargers
a = 5        // Defective car chargers

//Calculation
// As we know, for hypergeometric distribution, mean = (n*a)/N
Mean=((n*a))/N           // Mean of probability distribution of number of defectives

//Results
printf ( "mean of probability distribution of the number of defectives in a sample of 10 car chargers: %.2f",Mean)
