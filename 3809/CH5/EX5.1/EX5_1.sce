//Chapter 5, Example 5.1

clc
//Initialisation'
i=5                             //current in amp
r=100*10**-3                    //radius in meter
pi=3.14                         //pi

//Calculation
l=2*pi*r                         //circumference
h=i/l                            //magnetic field strength



//Results
printf("Magnetic field strength, H = %.2f A/m",h)
