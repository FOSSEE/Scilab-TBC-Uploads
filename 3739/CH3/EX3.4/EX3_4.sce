//Chapter 3, Example 3.4, page 68
clc
//Initialisation
K=1.33
d1=24                                     //heigth in Km
d2=15                                      //heigth in Km
K1=1
Re=6370                                    //actual redius of earth

//Calculation
R=4.12*(d1**0.5+d2**0.5)
R1=K1*Re
Rrh=(2*R1*d1)**0.5+(2*R1*d2)**0.5

//Results
printf("K=1.33")
printf("\nRrh = %.1f km\n",R)
printf("K=1")
printf("\nRrh = %.1f km",Rrh)                     //The answer provided in the textbook is wrong
