//Chapter 5, Example 5.4, page 192
clc
//Initialisation
f=0.5                               //frequency in MHz
Pa=100                              //transmitter power
Po=1000
e120=68                             //from figure 5.10
e220=85                            //from figure 5.9
e230=80
e330=60                             //from figure 5.10
e380=48
e350=50                            //from figure 5.10
e250=75                            //from figure 5.9
e260=73
e160=60                            //from figure 5.10
e180=48

//Calculation
ETR=e120-e220+e230-e330+e380
ERT=e350-e250+e260-e160+e180                        //The answer provided in the textbook is wrong
ER=(ETR+ERT)/2                                      //The answer provided in the textbook is wrong
Ea=ER+(10*log10(Pa*Po**-1))
lb=137.2+(20*log10(f))-ER

//Results
printf("(1) Electric field = %.1f dB",Ea)              //The answer provided in the textbook is wrong
printf("\n(2) Basic loss path = %.1f dB",lb)             //The answer provided in the textbook is wrong
