//Chapter 6, Example 6.19, page 275
clc

//Initialisation
f=1800                                                     //frequency in MHz
d=10                                                      //distance in m
hb=40
hm=3
A=132.57                                                 //Hata model data
B=34.4                                                  //Hata model data

//Calculation
E2=(((1.1*log10(f))-0.7)*hm)-((1.56*log10(f))-0.8)
lp=46.3+33.9*log10(f)-13.82*log10(hb)+(44.9-6.55*log10(hb)-E2+hm)
L=A+B+-E2


//Results
printf("Path loss based on COST–Hata model,")
printf("\n         Lp = %.2f dB",lp)
printf("\nPath loss based on Hata model,")
printf("\n         Lp = %.2f dB",L)
