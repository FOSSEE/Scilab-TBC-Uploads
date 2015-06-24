clear;
clc;
disp("--------------Example 11.4---------------")
bandwidth= 1*10^6; // 1 Mbps
delay = 20*10^-3; // 20 ms
bandwidth_delay_product=bandwidth*delay;
frame_length=1000; // each frame has 1000 bits
utilization_percentage = (frame_length/bandwidth_delay_product)*100; // formula
printf("\nThe bandwidth-delay product is %d. Hence the system can send %d bits during the time it takes for the data to go from\nthe sender to the receiver and then back again.\nThe utilization percentage of the link is %d percent.",bandwidth_delay_product,bandwidth_delay_product,utilization_percentage); // display result
