//Chapter 2, Example 2.6, page 38
clc

//Initialisation
W=100*10**-12                         //power in watt
pi=3.14                                //pi
no=120*pi

//Calculation
Em=sqrt(2*no*W)                   //effective value of E
Ee=Em/sqrt(2)                     //effective value of E
Hm=sqrt((2*10**-10)/(no))         //effective value of H
He=Hm/sqrt(2)                     //effective value of H

//Result
printf("Em = %.1f  uV/m",(Em*10**6))
printf("\nEe = %.1f  uV/m",(Ee*10**6))
printf("\nHm = %.3f  uA/m",(Hm*10**6))
printf("\nHe = %.2f  uA/m",(He*10**6))
