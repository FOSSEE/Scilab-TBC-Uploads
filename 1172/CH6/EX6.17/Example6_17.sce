clc
//Given that
E = 1 // energy of electron in MeV  
c = 3e8 // speed of light in m/s
m_0 = 9e-31 // rest mass of electron
// sample problem 17 page No. 229
printf("\n \n\n # Problem 17 # \n")
printf("\n Standard formula used \n m = m_o* sqrt ( 1- (v/c)^2) \n and \n E=m*c^2")
m = E * 1.6e-13 / c^2// calculation of mass of electron
v = c * sqrt(1 - (m_0 / m)^2) // calculation of Velocity of electron
printf ("\n Velocity of electron is %e m/s.",v )
