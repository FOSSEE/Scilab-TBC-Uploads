//Chapter 6, Example 6.11, page 262
clc
//Initialisation
p1=20                                    //transmitter power
g=6                                       //gain
h1=20                                    //height in metre

//Calculation
ct=p1/10                                  //Power gain
ch=(h1*30**-1)**2                         //height gain
cg=g*4**-1                                //antenna gain
co=10*log10(ct*ch*cg)                //Total effects

//Results
printf("(1) Power gain, Ct = %.f",ct)
printf("\n    Height gain = %.2f",ch)
printf("\n    Antenna gain = %.1f",cg)
printf("\n(2) Total effects = %.2f dB",co)
