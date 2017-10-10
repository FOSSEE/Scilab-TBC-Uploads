//Chapter 2, Example 2.11, page 51
clc
//Initialisation
R=25000                                       //path curvature radius in Km
Re=6370                                       //Earth radius in Km


//Calculation
K=R*(R-Re)**-1                               //K factor
Re1=K*Re                                     //equivalent radii of the Earth
R1=(1*Re1**-1)-(1*Re**-1)+(1*R**-1)
d=1*R1**-1                                   //equivalent radii of the path


//Result
printf("K = %.3f",K)
printf("\nRe1 = %d Km",Re1)
printf("\nR1 = %.1f Km\n",d)
printf("Therefore, R1 ~ infinity")
