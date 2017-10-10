//Chapter 3, Example 3.13, page 109
clc

//Initialisation
eirp=800                                    //in KW
d=24                                        //in Km
a=0.03                                      //in radian
d1=22                                       //in Km
d2=2                                        //in Km
h=0.4*10**-3                                //wavelength in m
Er=45                                       //in microvolt

//Calculation
E=104.8+10*log10(eirp)-20*log10(d)                //field intensity
V=a*sqrt((2*d2*d1)/((d1+d2)*h))                      //knife edge obstacle attenuation
Lke=23                                                    //from table 3.4
er=10**(Er*20**-1)

//Results
printf("(1) Electric field intensity = %.3f microV/m",er)
