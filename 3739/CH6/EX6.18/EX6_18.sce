//Chapter 6, Example 6.18, page 274
clc

//Initialisation
f=420                                         //frequency in Hz
h1=40                                         //height in m
h2=5                                         //height in m
d=15                                         //distance in km

//Calculation
A=69.55+26.16*log10(f)-13.82*log10(h1)        //Hata parameters
B=44.9-6.55*log10(h1)
C=2*(log10(f*28**-1))**2+5.4
D=4.78*(log10(420))**2-18.33*log10(f)+40.94
E1=3.2*(log10(11.75*h2))**2-4.97
E2=(((1.1*log10(f))-0.7)*h2)-((1.56*log10(f))-0.8)
L3=A+B*log10(d)-D                                  //in open area;
L2=A+B*log10(d)-C                                 //in suburban area;
L1=A+B*log10(d)-E1                                 //in large cities;
L11=A+B*log10(d)-E2                                //in small cities;

//Results
printf("In large cities L1 = %.2f dB",L1)
printf("\nIn small cities L1 = %.2f dB",L11)
printf("\nIn suburban area L2 = %.2f dB",L2)
printf("\nIn open area L2 = %.2f dB",L3)
