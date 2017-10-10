//Chapter 2, Example 2.7, page 39
clc
//Initialisation
f=7.5                                   //frequency in GHz
d=40                                    //link distance in Km
Pt=30                                   //transmitter power in dBm
La=15                                   //additional loss
Pth=-78                                 //RX threshold

//Calculation
FSL=92.4+(20*log10(f*d))            //FSL
RSL=Pt-(0.4*FSL)-La                      //RSL
FM=RSL-Pth                               //fade margin

//Result
printf("(1) Received signal level (RSL) = %.1f dBm",RSL)
printf("\n(2) Fade margin = %.1f dB",FM)
