//Chapter 7, Example 7.13, page 342
clc
//Initialisation
fm=35                               //fade margin
po=0.092                            //fading occurrence probability

//Calculation
pw=po*10**(-fm*10**-1)               //deep fading occurrence 


//Results
printf("Deep fading occurrence probability, Pw = %.1f x 10^-5",(pw*10**5))
