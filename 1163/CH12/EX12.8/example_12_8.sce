clear;
clc;
disp("--------------Example 12.8---------------")
//Proof
printf("Proof:-\n Let us prove this for the first station, using the previous four-station example.\n The data on the channel is D = (d1*c1 + d2*c2 + d3*c3 + d4*c4) .\n The receiver which wants to get the data sent by station 1 multiplies these data by c1.\n  D*c1 = (d1*c1+d2*c2+d3*c3+d4*c4)*c1\n       = d1*c1*c1 + d2*c2*c1 + d3*c3*c1 + d4*c4*c1\n       = d1*N + d2*0 + d3*0 + d4*0\n       = d1*N\n When the result is divided by N, we get d1. Hence Proved.");
