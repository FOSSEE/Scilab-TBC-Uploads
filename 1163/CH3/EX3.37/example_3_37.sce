clear;
clc;
disp("--------------Example 3.37---------------")
SNR = 0; //an extremely noisy channel in which the value of the signal-to-noise ratio is almost zero.
m=log2(1+SNR);
//display result
printf("The value of log2(1+SNR) = %d \nHence C = B*log2(1+SNR)= B*0 = %d",m,m);
printf("\nThis means that the capacity of this channel is zero regardless of the bandwidth. In other words, any data cant be recieved through this channel.")
