clc
//Given that
mass_ratio = 0.5 // Ratio of rest mass and relativistic mass  
c = 3e8 // speed of light in m/s
// sample problem 11 page No. 225
printf("\n # Problem 11 # \n")
printf("\n Standard formula used \n m = m_o / sqrt ( 1- (v/c)^2)\n")
v = c * sqrt(1- mass_ratio^2) // calculation of Velocity of particle
printf ("\n Velocity of particle is %f c.", v / c )

