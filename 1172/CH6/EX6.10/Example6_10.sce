clc
//Given that
c = 3e8 // speed of light in m/s
m_0 = 1 // atomic mass in amu
m = 3 * m_0 // relativistic mass
// sample problem 10 page No. 225
printf("\n \n\n # Problem 10 # \n")
printf("\n Standard formula used  l = l_o * sqrt ( 1- (v/c)^2)")
v = c * sqrt(1- (m_0 / m)^2) // calculation of Velocity of particle
printf ("\n Velocity of particle is %f c.", v / c )
