clc 
// Given that
w = 199.5 // isotopic mass of Hg
Tc = 4.186 // critical temperature in K 
w_ = 203.4 // increased isotope mass of Hg
// Sample Problem 4 on page no. 19.15
printf("\n # PROBLEM 4 # \n")
printf("Standard formula used \n ")
printf(" T_c*M^(1/2) = constant \n")
Tc_ = Tc * (w / w_)^(1/2)
printf("\n Critical temperature is %f K.",Tc_)
