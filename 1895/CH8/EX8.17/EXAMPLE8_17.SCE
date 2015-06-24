//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 7
//WAVEFORM CODING TECHNIQUES
clear all;
clc;
printf("EXAMPLE 8.17(PAGENO 413)");

//given
r = 36000//bit rate of a channel
f_m = 3.2*10^3//maximum frequency

//calculations
f_s = 2*f_m//sampling frequency
v  = r/f_s//number of binary digits
q = 2^v//quantizing level

//results
printf("\n\ni.Sampling frequency  = %.2f Hz",f_s);
printf("\n\nii.Number of binary digits = %.2f ",v);
printf("\n\niii.Quantizing level = %.2f ",q);
printf("\n\nNote:In the textbook they took approximation in number of\n     binary levels")
