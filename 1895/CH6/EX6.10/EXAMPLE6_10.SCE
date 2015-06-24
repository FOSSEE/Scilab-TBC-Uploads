//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 6
//NOISE
clear all;
clc;
printf("EXAMPLE 6.10(PAGENO 305)");

//given
F_1 = 2//noise figure of first stage in dB
A_1 = 12//gain in first stage in dB
F_2 = 6//noise figure of second stage in dB
A_2 = 10//gain in first second in dB 


//calculations
F_1ratio = exp((F_1/10)*log(10));//noise figure of first stage in ratio 
F_2ratio = exp((F_2/10)*log(10));//noise figure of second stage in ratio 
A_1ratio = exp((A_1/10)*log(10));//gain of first stage in ratio
A_2ratio = exp((A_2/10)*log(10));//gain of second stage in ratio
F = F_1ratio + ((F_2ratio - 1)/(A_1ratio));//Overall noise figure 
F_dB = 10*log10(F);//Overall noise figure  in dB

//results
printf("\n\nOverall noise figure = %.2f dB",F_dB );
