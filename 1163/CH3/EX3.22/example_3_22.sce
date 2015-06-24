clear;
clc;
disp("--------------Example 3.22---------------")
bit_rate=10^6; // 1 Mbps
//a) rough approximation
mb=bit_rate/2; // formula to caluculate bandwidth 
min_bandwidth=mb*10^-3; //multiply with conversion factor
printf("\n a) The minimum bandwidth is %d kHz.",min_bandwidth); // display result
printf("\n    A low-pass channel with frequencies between 0 and %d kHz is required.\n\n",min_bandwidth);
//b) using the first and the third harmonics
bw = 3*mb;  // formula to caluculate bandwidth 
bandwidth=bw * 10^-6; //multiply with conversion factor
printf(" b) The required bandwidth is %2.1f MHz.",bandwidth); // display result
printf("\n  Hence a better result can be achieved by using the first and the third harmonics.\n\n");
//c) using the first, third, and fifth harmonics
bw = 5*mb;  // formula to caluculate bandwidth 
bandwidth = bw*10^-6; //multiply with conversion factor
printf(" c) The required bandwidth is %2.1f MHz.",bandwidth);  // display result
printf("\n  Hence a still better result can be achieved by using the first, third and the fifth harmonics.\n\n");
