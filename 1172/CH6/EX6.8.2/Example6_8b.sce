clc
//Given that
c = 3e8 // speed of light in m/s
v = 2.598e8 // speed of spaceship
t_0 = 1 // time in second
// sample problem 8b page No. 224
printf("\n \n\n # Problem 8b # \n")
printf("\n Standard formula used \n t= t_o/ sqrt ( 1- (v/c)^2)")
t = t_0 / sqrt(1 - (v ^2 / c ^2) ) // calculation of Time corresponding to 1 sec
printf ("\n Time corresponding to 1 sec is %d sec.",ceil (t) )
