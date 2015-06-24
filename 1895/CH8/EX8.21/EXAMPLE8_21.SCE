//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 7
//WAVEFORM CODING TECHNIQUES
clear all;
clc;
printf("EXAMPLE 8.21(PAGENO 416)");

//given
SbyN_dB = 30//signal to noise ratio
f_s = 8000//sampling rate

//calculations
//for Sbyn_dB = 1.76 + 20*logq
x1 = (1 / 20)*(SbyN_dB - 1.76)
q1 = exp(x1*log(10))//quantizing level for first case
v1 = log2(q1)// number of bits  for first case
f_PCM1 = (v1 / 2) * f_s//minimum required bandwidth  for first case
//for SbyN = 20logq - 10.1
x2 = (1/20) * (SbyN_dB + 10.1)
q2 =  exp(x2*log(10))//quantizing level for second case
v2 = log2(q2)// number of bits for second case
f_PCM2 =  (v2 / 2) * f_s//minimum required bandwidth for second case

//results
printf("\n\ni.a.Minimum number of quantizing levels for first case = %.2f ",q1);
printf("\n\n  b.Number of bits for first case =%.2f ",v1);
printf("\n\n  c.Minimum system bandwidth required for first case = %.2f hz",f_PCM1);
printf("\n\nii.a.Minimum number of quantizing levels for second case = %.2f ",q2);
printf("\n\n   b.Number of bits for second case =%.2f ",v2);
printf("\n\n   c.Minimum system bandwidth required for second case = %.2f hz",f_PCM2);
printf("\n\nNote:In the text book they took approximation in\nquantization levels and number bits")
