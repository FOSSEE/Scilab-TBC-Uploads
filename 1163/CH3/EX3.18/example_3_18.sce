clear;
clc;
disp("--------------Example 3.18---------------")
num_line=24; // number of lines
num_char=80; // number of characters in each line
bits=8; // bits per character
rate = 100; // pages per minute
br=rate*bits*num_char*num_line;  // formula to calculate bit rate
bit_rate=br*10^-6; // multiply with conversion factor
printf("The bit rate of the channel is %4.3f Mbps.",bit_rate);  // display the result (answer in the text is 1.636 Mbps,which is wrong)
 
