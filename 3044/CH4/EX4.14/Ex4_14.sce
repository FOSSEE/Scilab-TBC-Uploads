//Variable Declaration
N = 20       // Total car chargers
n = 10       // Number of selected car chargers
a = 5        // Defective car chargers

//Calculation


// As we know, for hypergeometric distribution, Variance = (n.a/n)*(1-a/N)*((N-n)/(N-1))
Variance = (((n*a))/N)*(1-((a)/N))*(((N-n)/(N-1)))                // Variance of Sample
std_dev=sqrt(Variance)                                                           // standard deviation of sample

//Results
printf ( "standard deviation of given sample: %.2f",std_dev)
