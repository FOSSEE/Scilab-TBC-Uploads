// Example 8.2.2  
clc;
clear;
SN_dB=60;    //signal to noise ratio
h=6.626d-34 //plank's constant
c=3d8;     //speed of light
lamda=1.3d-6; //wavelength
eta=1;
B=6.5d6;     //Bandwidth
SN=10^(SN_dB/10);
f=c/lamda
Popt= 2*SN*h*f*B/eta;     //computing optical power
Popt_dB = 10 * log10(Popt) + 30;    //optical power in dbm
Popt=Popt*10^6;
printf("\nIncident power required to get an SNR of 60 dB at the receiver is %.4f microWatt or %.3f dBm",Popt,Popt_dB);
printf("\nNOTE - Calculation error in the book.\nThey have take SN as 10^5 while calculating, which has lead to an error in final answer");

//Calculation error in the book.They have take SN as 10^5 while calculating, which has lead to an error in final answer
//answer in the book 198.1nW and -37.71 dBm
