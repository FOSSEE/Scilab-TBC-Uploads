//Chapter 5, Example 5.8, page 202
clc

//Initialisation
et=20                                    //in dB
gr=2                                     //antenna gain in dB
f=15                                     //frequency in MHz


//Calculation
pr=et+gr-(20*log10(f))-107.2          //received signal power in dB
pr1=10**(pr/10)                             //received signal power in W

//Results
printf("Power Recieved signal = %.2f pW",(pr1*10**12))
