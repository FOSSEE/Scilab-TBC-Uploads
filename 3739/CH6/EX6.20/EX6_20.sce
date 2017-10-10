//Chapter 6, Example 6.20, page 277
clc

//Initialisation
pt=20                           //transmitter power in watt
Hb=30                           //in metre
Hm=3                           //in metre
gt=14.2                          //trasmitter gain in dB
gr=0.2                            //receiver gain in dB
f=450                             //frequency in MHz
gm=-2                            //in dBd
gr2=-2.2                         //in dBi
r1=10                             
n=20
hb=10
hm=10


//Calculation
gt1=gt+gr2
pr1=-62-38*log10(r1)-20*log10(f*900**-1)+7          //received signal level in suburban
pr2=-64-43*log10(r1)-20*log10(f*900**-1)+7          //received signal level in urban
ao=10*log10(2)+(gr2-6)                                   //in dB (The answer provided in the textbook is wrong)
pr11=-62-38*log10(r1)-20*log10(f*900**-1)+ao        //received signal level in rural
pr22=-64-43*log10(r1)-20*log10(f*900**-1)+ao        //received signal level in cities
ptd=10*log10(pt*10**3)                                   //in dBm
lp1=ptd-pr11                                                  //Path loss in rural area
lp2=ptd-pr22                                                  //Path loss in cities area

//Results
printf("(2) In the suburban area, Pr = %.1f dBm",pr1)
printf("\n    In the urban area, Pr = %.1f dBm",pr2)
printf("\n(3) Path loss in rural area Lp = %.1f dB",lp1)           //The answer provided in the textbook is wrong
printf("\n    Path loss in cities area Lp = %.1f dB",lp2)          //The answer provided in the textbook is wrong
