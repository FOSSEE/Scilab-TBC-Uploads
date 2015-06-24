clc
//Given that 
c = 3e8 // speed of light in m/s
v = 0.8 *c // velocity of rod in m/s
m_0 = 1.673e-27 // rest mass of proton in kg
// sample problem 27 page No. 228
printf("\n \n\n # Problem 27 # \n")
printf("\n Standard formula used \n E_total = KE + E_mass")
K_E = m_0 * c^2 *(1/sqrt(1-(v/c)^2) - 1) / 1.6e-13 // calculation of Kinetic energy of proton
printf ("\n Kinetic energy of proton is %dMeV.", K_E )

