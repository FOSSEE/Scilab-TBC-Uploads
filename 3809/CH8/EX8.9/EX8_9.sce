//Chapter 8, Example 8.9
clc
//Initialisation
l=15*10**-3                     //inductance in henry
c=30*10**-6                    //capacitance in farad
r=5                            //resistance in ohm
pi=3.14                         //pi

//Calculation
fo=1/(2*pi*sqrt(l*c))           //Resonant Frequency
q=(1/r)*sqrt(l/c)                 //Quality Factor
b=r/(2*pi*l)                     //Bandwidth

//Result
printf("Resonant Frequency, Fo = %d Hz \n",fo)
printf("Quality Factor, Q = %.2f\n",q)
printf("Bandwidth, B = %d Hz\n",b)
