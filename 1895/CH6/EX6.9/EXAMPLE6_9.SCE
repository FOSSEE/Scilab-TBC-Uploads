//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 6
//NOISE
clear all;
clc;
printf("EXAMPLE 6.9(PAGENO 302)");

//given
R_eq = 2518//equivalent resistance in ohms
R_t = 600//input impedence in ohms
R_a= 50//output impedencre in ohms

//calculations
R_eq1 = R_eq - R_t;
F = 1 + (R_eq1/R_a) //noise figure
F_dB = 10*log10(F)//noise figure in dB

//results
printf("\n\nNoise figure in dB = %.2f dB",F_dB);
printf("\n\nNote:Calculation mistake is their in text book in finding noise figure in dB")
