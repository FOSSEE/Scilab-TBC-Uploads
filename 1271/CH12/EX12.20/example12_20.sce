clc 
// Given that
t = 1600 // the half life of radium(226) in year
t1 = 3.8 // the half life of radon(222) in days
m = 1 // mass of Ra(226) in gm
// Sample Problem 20 on page no. 12.38
printf("\n # PROBLEM 20 # \n")
printf(" Standard formula used \n")
printf(" N_1*lambda_1 = N_2*lambda_2 \n")
m_ = (222 * t1 * m) / (226 * 365 * t) // by the formula N1*t = N2*t1
printf("\n Mass of radon is %e gm.",m_)
