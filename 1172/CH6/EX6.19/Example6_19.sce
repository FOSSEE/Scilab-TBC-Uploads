clc
//Given that 
c = 3e8 // speed of light in m/s
v = 0.99 * c  // velocity of particle
proper_time = 2.2e-6 // proper mean life time of mesons
// sample problem 19 page No. 230
printf("\n \n\n # Problem 19 # \n")
printf("\n Standard formula used \n t = t_o /sqrt ( 1- (v/c)^2)")
t = proper_time / sqrt (1 - (v / c)^2) // calculation of time period
d = v *t// calculation of Distance travelled by particle
printf ("\n Distance traveled by particle is %e m.",d )
