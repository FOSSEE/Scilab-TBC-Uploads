//Chapter 5, Example 5.7, page 201
clc

//Initialisation
f=10                                   //frequency in MHz
delta=14.5                              //in degree
d=1750                                  //distance in Km
re=6370                                //radius of earth in Km
pt=100                                //transmitter power in watt
lm=30                                   //in dB
P11=3775                              //in Km

//Calculation
a=(delta+(d/(2*re)))*(180*3.14**-1)
j=cos(a)
a1=(d*(2*re)**-1)*(180*3.14**-1)
j1=sin(a1)
P=4*re*(j1*j**-1)                                  //path length
pt1=10*log10(pt*10**-3)
FSL=32.4+20*log10(f)+20*log10(3775)       //free space loss
Et=136.6+pt1+20*log10(f)-FSL-lm                 //median value

//Results
printf("(1) Path length = %d km",P11)
printf("\n(2) Median value = %.2f dB",Et)
