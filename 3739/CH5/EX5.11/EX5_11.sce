//Chapter 5, Example 5.11, page 208
clc

//Initialisation
d=2500                                      //distance in Km
re=6370                                     //radius of earth in Km
dt=6                                        //elevation angle in degree
f1=15                                       //frequency in MHz
los1=42                                     //loss
pi=3.14

//Calculation
teta=d*(2*re)**-1                   //in radian
teta1=teta*180*pi**-1              //in degree
phi=90-dt-teta1
l=(2*re*sin(teta))/sin(phi*pi/180)
fsl=32.4+(20*log10(f1))+(20*log10(l))        //Free space loss
pr=57+6-fsl-los1                                    //receving power in dB
pr1=10**(pr/10)                                    //receving power in Watt

//Results
printf("Power = %.2f pW",(pr1*10**12))
