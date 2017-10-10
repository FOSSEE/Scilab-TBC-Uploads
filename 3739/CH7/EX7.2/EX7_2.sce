//Chapter 7, Example 7.2, page 294
clc

//Initialisation
h=500                                //height in m
a=0.000315
b=0.0001361
Re=6370000                           //radius of earth in m


//Calculation
n=1+(a*exp(-b*h))                
n1=(n-1)*10**6                         //Refraction index
c=(a*b*exp(-b*h))
R=1/c                                  //Radius of path curvature in km
d=1-(Re/R)
K=1/d                                 //K-factor

//Results
printf("(1) Refraction index = %d ",n1)
printf("\n(2) Radius of path curvature = %d kM",(R/10**3))
printf("\n(3) K-factor = %.3f",K)
