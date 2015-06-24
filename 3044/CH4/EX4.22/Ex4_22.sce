//Variable Declaration
alpha = 6    // no of bad checks per day

//Calculation
// 4 bad checks on any day
lamda = alpha*1                                        // As T=1

p1 = ((%e^-lamda)*(lamda^4)) / factorial(4)           // required probability

// 10 bad checks over any 2 consecutive days
lamda = alpha*2

p2 = (((%e^-lamda)*(lamda^10)) / factorial(10))       // required probability

//Results
printf ( " probability of 4 bad cheacks on any day: %.3f",p1)
printf ( " probability of 10 bad cheacks on any 2 consecutive days: %.3f",p2)
