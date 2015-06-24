clc
//Given that
D15=0.59// diameter of 15th newton’s ring in cm
D5=0.336// diameter of 5th newton’s ring in cm
R=100// radius of Plano convex lens in cm
//Sample Problem 12 Page No. 51
printf("\n # Problem 12 # \n")
p=15-5
printf(" \n Standard formula used \n D_a^2 – D_b^2 = 4*p*R*lambda \n")

lambda=(D15^2 - D5^2)/(4*p*R)*1e8
printf("\n Wavelength of light used is %d Angstrom.", lambda)
