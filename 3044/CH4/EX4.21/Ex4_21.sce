
//Calculation
lamda = 1.3

val = ((%e^-lamda)*(lamda^0))/factorial(0)
p = 1 - val
variance = lamda

//Results
printf ( "Lamda: %.1f",lamda)
printf ( "Probability(X>=1): %.3f",p)
printf ( "Variance: %.1f",variance)
