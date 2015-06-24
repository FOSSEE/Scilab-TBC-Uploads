clc
//Given that
c = 3e8 // speed of light in m/s
p_rest_mass = 0.938 // rest mass energy of proton in BeV
KE = 1 // kinetic energy of proton in BeV
// sample problem 24 page No. 232
printf("\n \n\n # Problem 24 # \n")
printf("\n Standard formula used E^2 = p^2*c^2 + m_o^2*c^4*")
E = KE + p_rest_mass// calculation of energy of particle
p = (sqrt (E^2 *1e6 - (p_rest_mass * 1e3)^2)) *(1.6e-19)*(1e9) / c// calculation of Momentum of photon
printf( "\n Momentum of photon is %e kg m/s.", p)


