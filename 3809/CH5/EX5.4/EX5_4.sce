//Chapter 5, Example 5.4

clc
//Initialisation'
n=400                           //no of turns
l=200*10**-3                    //mean circumference
pi=3.14                         //pi
uo=4*pi*10**-7                   //dielectric constant
a=30*10**-6                     //area

//Calculation
L=(uo*a*n**2)/l                   //inductance

//Results
printf("Inductance L = %d uH",L*10**6)
