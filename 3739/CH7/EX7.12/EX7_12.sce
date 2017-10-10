//Chapter 7, Example 7.12, page 340
clc

//Initialisation
dn=70                                       //dN = 70
d1=1000                                     //height from sea level in m
d2=1400                                     //height from sea level in m
d=45                                        //radio link distance in km

//Calculation
K=10**(-4.2-0.0029*-dn)                      //Climate factor
ep=(d2-d1)/d                                 //magnitude of the path inclination
po=K*d**3*(1+ep)**(-1.2)*10**(0.033*6-1)      //Fading occurrence probability


//Results
printf("(1) Climate factor K = %.4f = 10^-4",K)
printf("\n(2) Fading occurrence probability Po = %.2f percent",po)
