clear;
clc;
disp("--------------Example 3.38---------------")
SNR = 3162;
B= 3000; // bandwidth in Hz
t=log2(1+SNR);
le=floor(t*100)/100; // rounding the log value
C= B*le;// formula to calculate capacity
c=C*10^-3; // multiply with conversion factor 
printf("\nThe capacity of the channel is %d bps.",C); //display result
printf("\nHence the highest bit rate for a telephone line is %5.3f kbps.",c);
