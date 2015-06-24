//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 7
//WAVEFORM CODING TECHNIQUES
clear all;
clc;
printf("EXAMPLE 8.16(PAGENO 407)");

//given
r = 64*10^3//data rate
f_s = 8*10^3//sampling frequency
N = 8//number of samples

//calcualtion
SNR_q = 1.8 + 6*N//signal to noise ratio

//result
printf("\n\nSignla to noise ratio  = %.2f dB",SNR_q);
printf("\n\nThe SNR of a DM system is 27.94dB which is too poor as \ncompared to 49.8db of an 8 bit PCM system. Thus, for all\n the simplicity of Dm,it cannot perform as well as an\n 8 bit PCM")
