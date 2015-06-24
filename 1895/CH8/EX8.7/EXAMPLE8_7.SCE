//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 7
//WAVEFORM CODING TECHNIQUES
clear all;
clc;
printf("EXAMPLE 8.7(PAGENO 390)");

//given
f_m = 3*10^3//maximum frequency
M = 16//number of quantization levels
q = M//number of quantization levels

//calculations
v = log2(q);//number of bits
f_s = 2*f_m//sampling frequency or rate which is greater than or equal to obtained value
r = v*f_s//bit transmission rate which is greater than or equal to obtained value

//results
printf("\n\ni.Number of bits in a codeword = %.2f bits",v);
printf("\n\nii.Minimum sampling rate = %.2f Hz ",f_s);
printf("\n\niii.Bit transmission rate =%.2f bits/sec",r);
