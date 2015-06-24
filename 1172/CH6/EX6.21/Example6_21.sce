clc
//Given that 
c = 3e8 // speed of light in m/s
m_ratio = 2000 // ratio of rest mass and relativistic mass
// sample problem 21 page No. 231
printf("\n \n\n # Problem 21 # \n")
printf("\n Standard formula used \n m = m_o* sqrt ( 1- (v/c)^2) ")
v = c * sqrt (1 - (1/m_ratio)^2) // calculation of Velocity required to increase mass by 2000 times
	
printf( "\n Velocity required to increase mass by 2000 times is %e - %f m/s.",c, (c -v))
