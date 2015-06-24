clc
//Given that
E = 1e9 // energy of electron in eV  
c = 3e8 // speed of light in m/s
m_0 = 9.1e-31 // mass of electron in kg
// sample problem 14 page No. 227
printf("\n \n\n # Problem 14a # \n")
printf("\n Standard formula used  \n E = m*c^2")
m = E / c^2 * 1.6e-19      // calculation of relativistic mass of particle
ratio = m / m_0// calculation of Ratio of relativistic mass and rest mass of particle
printf ("\n Ratio of relativistic mass and rest mass  of particle is %e.",ratio )


