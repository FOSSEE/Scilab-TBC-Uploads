//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 6
//NOISE
clear all;
clc;
printf("EXAMPLE 6.11(PAGENO 306)");

//given
F_1 = 9//noise figure for first stage in dB
F_2 = 20//noise figure for second stage in dB
A_1 = 15//gain in first stage in dB

//calculations
F_1ratio = exp((F_1/10)*log(10));//noise figure of first stage in ratio 
F_2ratio = exp((F_2/10)*log(10));//noise figure of second stage in ratio  
A_1ratio = exp((A_1/10)*log(10));//gain of first stage in ratio
F = F_1ratio + ((F_2ratio - 1)/(A_1ratio));
 F_dB = 10*log10(F);
 
 //results
 printf("\n\nOverall noise figure = %.2f dB", F_dB );
