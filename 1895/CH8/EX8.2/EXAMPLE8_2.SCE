//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 7
//WAVEFORM CODING TECHNIQUES
clear all;
clc;
printf("EXAMPLE 8.2(PAGENO 386)");

//given
f_m = 4.2*10^6//bandwidth of television signal
q = 512//quantization levels

//calculations
//number of bits and quantization levels are related in binary PCM as q = 2^v 
//where v is code word length
v = (log10(q)/log10(2));//code word length
BW = v*f_m//transmission channel bandwidth which is greater than or equal to obtained value
f_s = 2*f_m//sampling frequency which is greater than or equal to obtained value
r = v*f_s//signaling rate of final bit rate
SbyN_dB = 4.8 + 6*v//output signal to noise ratio which is less than or equal to obtained value

//results
printf("\n\ni.  Code word length  = %.2f bits",v);
printf("\n\nii. Transmission bandwidth = %.2f Hz",BW);
printf("\n\niii.Final bit rate = %.2f bits/sec",r);
printf("\n\niv.Output signal to quantization noise ratio = %.2f dB",SbyN_dB);
printf("\n\nNote:There is misprint in the question i.e TV signal bandwidth ")
