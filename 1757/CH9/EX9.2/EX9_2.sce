//Example9.2  // to find VCO output frequency
clc;
clear;
close;
fc = 400  ; // KHz a free running frequency
f = 10 ;  // KHz  low pass filter bandwidth
fi = 500 ; // KHz  input frequency

// In PLL a phase detector produces the sum and difference frequencies are defined as

sum = fi+fc ;
disp('The sum frequency produce by phase detector is = '+string(sum)+' KHz '); 

difference = fi-fc ;
disp('The difference frequency produce by phase detector is = '+string(difference)+' KHz '); 

disp('The phase detector frequencies are outside of the low pass filter');

disp('The VCO will be in its free running frequency ');
