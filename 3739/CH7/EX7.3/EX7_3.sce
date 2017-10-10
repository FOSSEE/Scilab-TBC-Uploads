//Chapter 7, Example 7.3, page 299
clc
//Initialisation
k1=1.3                                 //K-factor
k2=0.7                                 //K-factor
H1=1200                                //sea level in m
H2=1400                                //sea level in m
re=6370*10**3                          //radius of earth in m
f=15*10**9                             //frequency in Hz
a1=0.6
d1=15*10**3                            //distance in m
d2=20*10**3                            //distance in m
c=3*10**8                              //speed of light
d=30*10**3                             //distance in m
h2=25.24       
r2=11.55
a2=0.3


//Calculation
h1=500*d1*d2/(k1*re)
h=c*f**-1
r1=sqrt((d1*d2*h)/d)
H11=H1+h1+a1*r1                      //in meter
H22=H2+h2+a2*r2                      //in meter

//Results
printf("(1) H1 = %d m",H11)              //The answer provided in the textbook is wrong
printf("\n(2) H2 = %d m",H22)
