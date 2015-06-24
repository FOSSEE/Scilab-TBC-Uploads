clear;
clc;
disp("--------------Example 12.2---------------")
frame_bits=200; 
datarate=200*10^3; // 200 kbps
Tfr=frame_bits/datarate;
Tv=2*Tfr; // vulnerable time
printf("The Tfr is %d ms and the vulnerable time is %d ms.\nThis means no station should send later than %d ms before this station starts transmission\nand no station should start sending during the one %d ms period that this station is sending.",Tfr*10^3,Tv*10^3,Tfr*10^3,Tfr*10^3); // display results with appropriate units
