clear;
clc;
disp("--------------Example 4.5---------------")
data_rate=1; // 1 Mbps
frac= 0.25 // 4B/5B coding adds 25% to the baud rate
add=data_rate*frac;
N = (data_rate+add)*10^6; // Hz
NRZI_B= N/2; // minimum bandwidth using NRZ-I
Manchester_B = data_rate; // minimum bandwidth using Manchester scheme 
// display result
printf("\n 4B/5B block coding increases the bit rate to %3.2f Mbps\n The minimum bandwidth using NRZ-I scheme is %d kHz.\n\n The minimum bandwidth using Manchester scheme is %d MHz.",N*10^-6,NRZI_B*10^-3,Manchester_B);
printf("\n\nThe NRZ-I scheme needs a lower bandwidth, but has a DC component problem; the Manchester scheme needs a higher bandwidth,\nbut does not have a DC component problem.")
