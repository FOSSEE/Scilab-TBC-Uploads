clc
//Given that
c = 3e8 // speed of light in m/s
u = 0.9*c // velocity of first particle with respect to other in m/s
density1 = 19.3e-3 // density of gold in rest frame
// sample problem 13 page No. 226
printf("\n \n\n # Problem 13 # \n")
printf("\n Standard formula used \n m = m_o/ sqrt ( 1- (v/c)^2) \n and \n l = l_o* sqrt ( 1- (v/c)^2) ")
mass_ratio = sqrt (1 - (u/c)^2) // calculation of ratio of relativistic mass
volume_ratio = 1 / sqrt (1 - (u/ c)^2) // calculation of ratio of relativistic volume
density2 = density1 * (volume_ratio /mass_ratio ) //calculation of ratio of relativistic density
printf ("\n Relativistic density of rod in moving frame is %e.",density2)
