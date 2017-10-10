//Chapter 3, Example 3.6, page 76
clc
//Initialisation
dn=-0.2                               //air refractivity gradient
d=20                                  //height
b=0.074                               //elevation angle from graph 3.10
f=7                                   //frequency in Ghz from graph 3.11
c=2*10**-6

///Calculation
t=0.156                                //1000/6370
dm=dn+t
a=(-c*dm*d)**0.5                     //elevation angle of waves

//Results
printf("Elevation angle of waves = %.2f mrad",(a*10**3))
printf("\nElevation angle = %.3f",b)                                    //from graph 3.10
printf("\nMinimum frequency of coupling waves into the duct = %d Ghz",f)     //from graph 3.11
