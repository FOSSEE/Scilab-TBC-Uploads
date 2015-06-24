clear;
clc;
disp("--------------Example 3.44---------------")
bandwidth = 10 ; // 10 MHz
fpm=12000; //frames per second
bits=10000; //bits carried by each frame
throughput=((fpm*bits)/60)*10^-6; //formula for throughput
frac=bandwidth/throughput;  // ratio of bandwidth to throughput
printf("The throughput is %d Mbps.\n",throughput);// display result
printf("The throughput is almost 1/%dth of the bandwidth in this case.",frac);
