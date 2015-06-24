// Example 1.10.1  page 1.19

clc;
clear;

Bandwidth = 2d6;     //Bandwidth of channel
Signal_to_Noise_ratio = 1;              //Signal to Noise ratio of channel

Capacity = Bandwidth * log2(1 + Signal_to_Noise_ratio); //computing capacity
Capacity=Capacity/10^6;

printf("Maximum capacity of channel is %d Mb/sec.",Capacity);
