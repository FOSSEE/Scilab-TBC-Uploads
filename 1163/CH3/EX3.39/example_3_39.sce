clear;
clc;
disp("--------------Example 3.39---------------")
SNRdB=36;
B=2*10^6; // bandwidth = 2 MHz
SNR= 10^(SNRdB/10); // SNRdB= 10*log10(SNR)
C= B*log2(1+SNR); //formula to calculate capacity
c=C*10^-6; //multiply the conversion factor 
printf("\nThe theoretical channel capacity is %2.0f Mbps.",c); //display result
