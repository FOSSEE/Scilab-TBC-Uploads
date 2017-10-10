//Chapter 3, Example 3.3, page 67
clc
//Initialisation
er=1.001                                   //relative permittivity of a medium
dn=35*10**-6                               //vertical gradient of refractive index
Re=6370                                    //actual redius of earth
d=20                                       //transmitter and receiver distance in Km
d1=5
d2=15
K1=1.3333                                  //standard atmosphere condition

//Calculation
R=(er**0.5)/dn
K=R/(R-Re)
hm=(125*d**2)/(K*Re)                        //Earth bulge value in the middle of the path
h1=(500*d1*d2)/(K*Re)                       //h1
h2=(500*d1*d2)/(K1*Re)                      //h2


//Results
printf("Bulge value  = %.1f m",hm)
printf("\nBulge value, h1  = %.2f m",h1)
printf("\nBulge value, h2  = %.2f m",h2)
