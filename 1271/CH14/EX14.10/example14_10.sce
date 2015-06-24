clc 
// Given that
f = 1.2e15 // frequency of light in Hz
f_ = 1.1e+15 // threshold frequency of photoelectron emission in copper in Hz
h = 6.62e-34 // Planck constant in J-sec
c = 3e8 // speed of light in m/sec
e = 1.6e-19 // charge on an electron in C
// Sample Problem 10 on page no. 14.23
printf("\n # PROBLEM 10 # \n")
printf("Standard formula used \n ")
printf(" 1/2 m*v^2 = h*(mu - mu_0) \n")
E = h * (f - f_) / e
printf("\n Maximum energy of photoelectron is %f eV.",E)
                                                               
