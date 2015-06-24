//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 6
//NOISE
clear all;
clc;
printf("EXAMPLE 6.16(PAGENO 309)");

//given
A_1 = 10//gain in first stage in dB
A_2 = 10//gain in second stage in dB
A_3 = 10//gain in third stage in dB
F_1 = 6//noise figure for first stage in dB
F_2 = 6//noise figure for second stage in dB
F_3 = 6//noise figure for third stage in dB

//calculations
F_1ratio = exp((F_1/10)*log(10));//noise figure of first stage in ratio 
F_2ratio = exp((F_2/10)*log(10));//noise figure of second stage in ratio 
F_3ratio = exp((F_3/10)*log(10));//noise figure in third stage in ratio 
A_1ratio = exp((A_1/10)*log(10));//gain of first stage in ratio
A_2ratio = exp((A_2/10)*log(10));//gain of second stage in ratio
A_3ratio = exp((A_3/10)*log(10));//gain of third stage in ratio
F = F_1ratio + ((F_2ratio - 1)/(A_1ratio)) + ((F_3ratio - 1)/(A_2ratio*A_1ratio));//Overall noise figure

//results
 printf("\n\nOverall noise figure of three stage cascaded amplifier = %.2f ", F );
