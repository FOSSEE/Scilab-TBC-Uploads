clc
//Given that
E = 1e3 // energy of moving electron in eV
h = 6.624e-34 // plank's constant
c = 3e8 // speed of light
e = 1.6e-19 // charge on electron
m_e = 9.1e-31
//Sample Problem 4 Page No. 136
printf("\n\n\n # Problem 4 # \n")
printf("\n Standard formula Used \n E =(1/2)*m *v^2")
v = sqrt(2 * E * 1.6e-19/ m_e) //calculation of Velocity of moving electron
printf("\n Velocity of moving electron is %e  m/s.", v)

