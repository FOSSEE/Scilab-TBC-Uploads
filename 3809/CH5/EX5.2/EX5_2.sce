//Chapter 5, Example 5.2

clc
//Initialisation'
i=6                             //current in amp
n=500                           //no of turns
l=0.4                            //mean circumference
pi=3.14                         //pi
uo=4*pi*10**-7                   //dielectric constant
a=300*10**-6                     //area

//Calculation
f=i*n                              //force
h=f/l                            //magnetic field strength
B=uo*h                          //magnetic induction
phi=B*a                          //total flux

//Results
printf("(a) Force F = %d ampere-turns\n",f)
printf("(b) Magnetic Field Strength, H = %d A/m\n",h)
printf("(c) Magnetic Induction, B = %.2f mT\n",B*10**3)
printf("(d) Total Flux, phi = %.2f uWb\n",phi*10**6)
