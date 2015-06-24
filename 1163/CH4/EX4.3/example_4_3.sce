clear;
clc;
disp("--------------Example 4.3---------------")
data_rate1=10^3; //1 kbps
data_rate2=10^6; //1 Mbps
frac= 0.1*10^-2; // receiver clock is 0.1 percent faster than the sender clock
function []=extrabits(data_rate,frac) // function to calculate extra bps and recieved bps
    extra = data_rate*frac; // formula to calculate extra bps
    recieved = data_rate+extra; //formula to calculate reieved bps
    printf("Data rate = %d bps\nBits sent = %d\nBits recieved = %d\nExtra bps = %d ",recieved,data_rate,recieved,extra); //display the result
endfunction
//data rate = 1 kbps
printf("\nAt 1 kbps, \n");
extrabits(data_rate1,frac); //calling the function
//data rate = 1 Mbps
printf("\n\nAt 1 Mbps, \n")
extrabits(data_rate2,frac); //calling the function
