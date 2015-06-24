clear;
clc;
disp("--------------Example 3.47---------------")
message_size=5*10^6; //5 M byte
bandwidth=10^6; // 1Mbps
propagation_speed=2.4*10^8; //2.4*10^8 m/s
distance=12000*10^3; // 12,000 km
propagation_time=distance/propagation_speed; //propagation time formula
transmission_time=(message_size*8)/bandwidth; //transmission time formula
// display result
printf("\nThe propagation time is %d ms.\n",propagation_time*10^3);
printf("The transmission time is %d s.\n",transmission_time);
printf("\nNote that in this case, because the message is very long and the bandwidth is not very high, the dominant factor is\nthe transmission time, not the propagation time. The propagation time can be ignored.")
