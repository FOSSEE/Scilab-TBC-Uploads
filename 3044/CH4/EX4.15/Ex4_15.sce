//Variable Declaration
U = (1.0/6)*(1+2+3+4+5+6)                                  // Mean of probability distribution 
U1 = (1.0/6)*(1*1 + 2*2 + 3*3 + 4*4 + 5*5 + 6*6)           // Second moment about the origin

//Calculation
// As we know, Variance = (U1)-U*U
Variance = (U1) - U*U                                      // Variance of probability distribution

//Results
printf ( "Variance of Given probability distribution: %.2f or 35/12",Variance)
