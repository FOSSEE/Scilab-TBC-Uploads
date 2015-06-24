//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 7
//WAVEFORM CODING TECHNIQUES
clear all;
clc;
printf("EXAMPLE 8.10(PAGENO 392)");

//given
//x(t) = 3*cos(500*%pi*t)
v = 10//number of bits
A_m = 3//peak voltage
SbyN_2 = 40//signal to noise to noise ratio in second condition

//calculations
SbyN = 1.8 +6*v//signal to noise ratio in dB
v_2 = (40 - 1.8)/6//number of bits needed for SbyN = 40

//results
printf("\n\ni.Signal to noise to ratio in dB = %.2f dB",SbyN);
printf("\n\nii.Number of bits needed for noise ratio 40 = %.2f bits",v_2); 
