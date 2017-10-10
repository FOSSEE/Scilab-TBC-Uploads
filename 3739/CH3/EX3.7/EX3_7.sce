//Chapter 3, Example 3.7, page 80
clc

//Initialisation
f=18                                //frequency in GHz
d=30                                //in km
R=25                                //rainfall intensity in mm

//Using Table 3.3
av15=1.128
av20=1.065
av18=1.09
kv15=0.0335
kv20=0.0691
kv18=0.0587

//Calculation
yr=kv18*R**av18                        //rain specific attenuation
de=(90*(90+d)**-1)*d
A=de*yr                                //Maximum rain attenuation
 
//Results
printf("(1) Rain specific attenuation = %.2f dB/km",yr)
printf("\n(2) Maximum rain attenuation = %.1f dB",A)
