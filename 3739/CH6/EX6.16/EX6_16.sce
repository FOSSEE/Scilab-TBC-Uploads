//Chapter 6, Example 6.16, page 269
clc

//Initialisation
f=450                                                     //frequency in MHz
d=25                                                      //distance in m
hb=30
hm=5

//Calculation
fsl=32.4+(20*log10(f))+(20*log10(d))           //free space loss
lp=120+(40*log10(d))-(20*log10(hb))-(20*log10(hm))   //path loss
lm=76.3-10*log10(hm)
l=(40*log10(25))+(20*log10(f))-(20*log10(hb))+lm   //path loss based on the clutter factor model


//Results
printf("(1) Free space loss = %.1f dB",fsl)
printf("\n(2) Loss = %.1f dB",lp)
printf("\n(3) Loss based on clutter factor = %.1f dB",l)
