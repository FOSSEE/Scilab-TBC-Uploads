//Chapter 8, Example 8.8
clc
//Initialisation
l=10*10**-3                     //inductance in henry
r=100                            //resistance in ohm
pi=3.14                         //pi

//Calculation
t=l/r                       //time constant
wc=1/t                      //angular frequency
f=wc/(2*pi)                 //cyclic frequency 

//Result
printf("Time Constant, T = %d ^-4 s\n",t*10**5)
printf("Angular Cut-off Frequency, F = %d ^4 rad/s \n",wc/10**3)
printf("Cyclic Cut-off Frequency, Fc = %.2f kHz\n",f/1000)
