clc
//Given that 
c = 3e8 // speed of light in m/s
v = 0.9 * c // velocity of rod wrt laboratory
proper_time = 2.5e-8 // proper mean life time of mesons
// sample problem 16 page No. 228
printf("\n \n\n # Problem 16 # \n")
printf("\n Standard formula used \n t = t_o /sqrt ( 1- (v/c)^2)")
t = proper_time / sqrt (1 - (v / c)^2) // calculation of New mean life time
printf ("\n New mean life time is %e s.",t )
