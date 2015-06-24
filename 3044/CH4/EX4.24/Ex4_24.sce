//Variable Declaration
p = 0.05                         // probability of any device to show excessive drift

//Calculation
p1 = (1-p)^5*(p^1)         // required probability

//Results
printf ( "probability of sixth measuring device to be the first to show excessive drift: %.3f",p1)
