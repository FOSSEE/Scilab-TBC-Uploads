// Example 1.13.1  page 1.30

clc;
clear;

Bit_rate = 2d9;      // bit rate of channel
// Given sequence is 010111101110

Shortest_duration = 1 * (1/Bit_rate);     // shortest duration is '1'
Widest_duration = 4 * (1/Bit_rate);     //widest duration is '1111'

Shortest_duration=Shortest_duration*10^9;       //Converting into nano seconds
Widest_duration=Widest_duration*10^9;       //Converting into nano seconds

printf("\nShortest duration is %.1f nano second.",Shortest_duration);
printf("\nWidest duration is %d nano second.",Widest_duration);
