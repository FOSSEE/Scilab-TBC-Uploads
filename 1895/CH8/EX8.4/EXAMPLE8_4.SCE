//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 7
//WAVEFORM CODING TECHNIQUES
clear all;
clc;
printf("EXAMPLE 8.4(PAGENO 388)");

//given
e_max = .001//maximum quantization error
x_max = 10//maximum amplitude
x_min = -10//minumum amplitude
f_m = 100//bandwidth of ;input signal

//calculations
delta = 2*e_max//step size
q = (2*x_max)/delta//quantization levels
f_s = 2*f_m//sampling frequency
v = log10(q) /log10(2);//number of bits in the PCM word
r = v * f_s//bit rate required in the PCM signal which is greater than or equal to obtained value
BW = .5*r//transmission channel bandwidth which is greater than or equal to obtained value

//results
printf("\n\ni.Minimum sampling rate required = %.2f Hz",f_s);
printf("\n\nii.Number of bits in each PCM word = %.2f bits",v);
printf("\n\niii.Minimum bit rate required in the PCM signal =%.2f bits/sec",r);
printf("\n\niv.Transmission bandwidth  = %.2f Hz",BW) 
printf("\n\nNote: In the textbook they took number of bits as approximation from 13.28 to 14 so  thats why we get difference in the rest of calculations")
