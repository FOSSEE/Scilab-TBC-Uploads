// chapter 9 , Example9.2 , pg 255
M1=199.5    //isotopic mass
Tc1=4.185    //critical temperature for M1   (in K)
Tc2=4.133    //critical temperature for M2   (in K)
alpha=0.5

//M^alpha * Tc=constant
M2=((M1^alpha*Tc1)/Tc2)^(1/alpha)
printf("Isotopic mass at critical temperature 4.133K\n")
printf("M2=%.3f ",M2)
