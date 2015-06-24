clear;
clc;
disp("--------------Example 3.46---------------")
message_size=2.5*10^3; //2.5 kbyte
bandwidth=10^9; // 1Gbps
propagation_speed=2.4*10^8; //2.4*10^8 m/s
distance=12000*10^3; // 12,000 km
propagation_time=distance/propagation_speed; //propagation time formula
transmission_time=(message_size*8)/bandwidth; //transmission time formula
// display result
printf("\nThe propagation time is %d ms.\n",propagation_time*10^3);
printf("The transmission time is %4.3f ms.\n",transmission_time*10^3);
printf("\nNote that in this case, because the message is short and the bandwidth is high, the dominant factor is the\npropagation time, not the transmission time. The transmission time can be ignored.")
