//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 7
//WAVEFORM CODING TECHNIQUES
clear all;
clc;
printf("EXAMPLE 8.20(PAGENO 415)");

//given
SbyN_0dB = 40//signal to noise ratio in dB
SbyN_0 = exp((SbyN_0dB/10)*log(10))//signal to noise ratio
q = sqrt((2 / 3) * (SbyN_0));//quantizing level
v = log2(q)//number of binary bits
q_1 = 2^v//number of levels required 
SbyN_dB1 = 1.76 + 6.02*v//output signal-to-quantizing noise ratio in dB

//results
printf("\n\nNumber of required levels = %.2f ",v);
printf("\n\nOutput signal-to-quantizing noise ratio = %.2f dB",SbyN_dB1);
printf("\n\nNote : In the textbook they took number of levels as approximation so we get change\n in SbyN")
