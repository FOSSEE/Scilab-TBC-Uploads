//Chapter 6, Example 6.12, page 262
clc
//Initialisation
g1=10                                    //transmitter gain
ct=15                                    //power in watt
 

//Calculation
g2=g1-2.2                                //gain in dBd
cg=g2-6                                  //Antenna gain
ct1=ct*10**-1
ct2=10*log10(ct1)                   //Power gain
ch=(ct*30**-1)**2          
ch1=10*log10(ch)                     //Height gain
ct3=ct1*0.5
ct4=10*log10(ct3)
co=ct4+cg+ch1                              //Total effects

//Results
printf("(1) Power gain, Ct = %.2f",ct2)
printf("\n    Height gain = %.2f",ch1)
printf("\n    Antenna gain = %.1f",cg)
printf("\n(2) Total effects = %.2f dB",co)
