clc 
// Given that
w = 26.91 // isotopic mass of superconducting sample
Tc = 1.19 // first critical temperature in K 
w_ = 32.13 // increased isotope mass of superconducting sample
// Sample Problem 7 on page no. 19.16
printf("\n # PROBLEM 7 # \n")
printf("Standard formula used \n ")
printf(" T_c*M^(1/2) = constant \n")
Tc_ = Tc * (w / w_)^(1/2)
printf("\n Critical temperature is %f K.",Tc_)
