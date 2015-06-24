clc
//Given that 
c = 3e8 // speed of light in m/s
v = 0.6 * c // velocity of rod wrt laboratory
l_ = 1 // length of rod measured by observer in lab
// sample problem 15 page No. 228
printf("\n \n\n # Problem 15 # \n")
printf("\n Standard formula used \n l = l_o* sqrt ( 1- (v/c)^2)")
l = l_ / sqrt (1 - (v / c)^2)  // calculation of Proper length of rod  
printf ("\n Proper length of rod  is %f m.",l )

