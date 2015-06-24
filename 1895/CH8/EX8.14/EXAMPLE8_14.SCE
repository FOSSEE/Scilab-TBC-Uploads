//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 7
//WAVEFORM CODING TECHNIQUES
clear all;
clc;
printf("EXAMPLE 8.14(PAGENO 406)");

//given
f_s = 8*10^3//sampling rate
q = 64//quantization levels
delta = 31.25//step size

//calculations
v = log2(q);//no fo bits in the PC
f_s= (2*%pi*3*10^3)/delta//signalling rate which should be greater than the obtaining value

//results
printf("\n\nSignalling rate = %.2f Hz",f_s);
