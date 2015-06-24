//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 7
//WAVEFORM CODING TECHNIQUES
clear all;
clc;
printf("EXAMPLE 8.6(PAGENO 389)");

//given
v = 7//bits  of encoder
r = 50*10^6//bit rate of the system

//calculations
f_m = r/(2*v)//maximum message bandwidth which is less than or equal to obtained value
SbyN_dB = 1.8 + 6*v//signal to noise ratio in dB

//results
printf("\n\ni.Maximum message bandwidth = %.2f Hz",f_m);
printf("\n\nii.Signal to noise ratio when modulating frquency is 1MHz applied = %.2f dB",SbyN_dB)
