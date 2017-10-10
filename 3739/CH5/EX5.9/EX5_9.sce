//Chapter 5, Example 5.9, page 202
clc
//Initialisation
pr=-108.7                                   //received signal power in dB
fa=50                                       //noise tempreture
b=2700                                      //frequency in Hz
N=5                                         //noise figure in dB

//Calculation
snr=pr-fa-(10*log10(b))+204               //signal to noise ratio
snr1=snr-N

//Results
printf("Received signal to noise ratio = %.1f dB",snr)
printf("\nOutput signal to noise ratio = %.1f dB",snr1)
