clear;
clc;
disp("--------------Example 3.41---------------")
SNR=63;
B=10^6; // bandwidth = 1 MHz
b=4*10^6; // chosen bit rate =4 Mbps
C= B*log2(1+SNR);  // Shannon's capacity formula
c=C*10^-6; //multiply with conversion factor
L=2^(b/(2*B)); // bit rate = 2*bandwidth*log2(L) ; L= number of signal levels
//display result
printf("\nThe Shannon formula gives us %d Mbps, the upper limit. For better performance choose something lower, 4 Mbps, for example.",c);
printf("\n\nThe Nyquist formula gives the number of signal levels as %d .",L);
