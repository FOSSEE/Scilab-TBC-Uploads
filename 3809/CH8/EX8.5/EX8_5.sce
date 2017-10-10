//Chapter 8, Example 8.5
clc
//Initialisation
c=10*10**-6                    //capacitance in farad
r=10**3                        //resistance in ohm
pi=3.14                        //pi

//Calculation
t=c*r                       //time constant
wc=1/t                      //angular frequency
f=wc/(2*pi)                 //cyclic frequency 

//Result
printf("Time Constant, T = %.2f s\n",t)
printf("Angular Cut-off Frequency, F = %d rad/s \n",wc)
printf("Cyclic Cut-off Frequency, Fc = %.1f Hz\n",f)
