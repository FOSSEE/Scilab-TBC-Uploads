//Chapter 3, Example 3.11, page 98
clc

//Initialisation
h=12.5*10**-2           //in meter
d1=10*10**3             //in meter
d2=15*10**3              //in meter
d3=12.5*10**3            //in meter
d4=12.5*10**3               //in meter
h=1.25                    //in Kilometer

//Calculation
r1=(((d1*d2)/(d1+d2))*h)**0.5        //radius of first and fourth Fresnel zones
r4=r1*(4)**0.5
R1=(((d3*d4)/(d3+d4))*h)**0.5        //radius of first and fourth ellipse zones
R4=R1*(4)**0.5

//Results
printf("Radius of first fresnel zones, r1 = %.2f m",r1)
printf("\nRadius of Second fresnel zones, r4= %.2f m",r4)
printf("\nh = %.2f x 10^-4 Km",h)
printf("\nRadius of first ellipse, R1 = %.2f m",R1)
printf("\nRadius of second ellipse, R4 = %.1f m",R4)
