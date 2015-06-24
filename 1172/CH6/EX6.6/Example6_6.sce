clc
//Given that
m_0 = 1e-24 // mass of moving particle in kg
v = 1.8e8 // speed of particle in m/s
c = 3e8 // speed of light in m/s
// sample problem 6 page No. 223
printf("\n \n\n # Problem 6 # \n")
printf("\n Standard formula used \n m = m_o/ sqrt ( 1- (v/c)^2)")
m = m_0 / sqrt(1 - (v / c)^2) // calculation of Relativistic mass of particle
printf ("\n Relativistic mass of particle is %e kg.", m)

