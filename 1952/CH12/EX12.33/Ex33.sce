// Additional solved examples , Example 33 , pg 346
M1=199    //isotopic mass
Tc1=4.18    //critical temperature for M1   (in K)
Tc2=4.14    //critical temperature for M2   (in K)
alpha=0.5

//M^alpha * Tc=constant
M2=((M1^alpha*Tc1)/Tc2)^(1/alpha)
printf("Isotopic mass at critical temperature 4.133K\n")
printf("M2=%.4f ",M2)

