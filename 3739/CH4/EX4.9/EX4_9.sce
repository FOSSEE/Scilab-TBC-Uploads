//Chapter 4, Example 4.9, page 158
clc

//Initialisation
phi=166                                            //in radian
pi=3.14
t=35*pi/180                                  //geographic latitude in radian
t1=60*pi/180                                  //zenith angle in radian
N=80*pi/180                                  //in radian
x=92
y=35
h=35
p=1.2



//Calculation
m=0.11-0.49*cos(t)
fe=0.004*(1+0.021*166)**2                            //minimum value of f0E
A=1+0.0094*(phi-66)                                  //A value
B=(cos(N))
B1=B**m                                              //B value
C=x+y*cos(t)                                    //C value
D=cos(t1)**p                                    //D value
F=(A*B*C*D)**(0.25)                                  //exact value of f0E                             

//Results
printf("(1) Minimum value of f0E = %.2f x 10^-2 MHz",(fe*100))
printf("\n(2) f0E = %.2f MHz",F)                                 //The answer provided in the textbook is wrong
