clear;
clc;
disp("--------------Example 23.5----------------")
rwnd=3000; // bytes
cwnd=3500; // bytes
window_size=min(rwnd,cwnd); // formula
printf("The size of the window is the smaller of rwnd and cwnd, which is %d bytes.",window_size); // display the result
