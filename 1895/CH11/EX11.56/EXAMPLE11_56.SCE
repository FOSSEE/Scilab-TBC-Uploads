//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 11
//Information Theory
clear all;
clc;
printf("EXAMPLE 11.56(PAGENO 538)");

//given
B = 3.4*10^3//bandwidth
SbyN = 30//signal to the noise ratio in dB


//calculations
SbyN1 = exp((SbyN/10)*log(10))//signal to noise ratio 
C = B*log2(1+SbyN1);

//result
printf("\n\nInformation capacity of the telephone channel  = %.2f kbps",C);
