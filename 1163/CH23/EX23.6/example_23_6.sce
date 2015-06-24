clear;
clc;
disp("--------------Example 23.6----------------")
rwnd=9; // bytes
cwnd=20; // bytes
window_size=min(rwnd,cwnd); // formula
// display result
printf("This an unrealistic example of a sliding window. The sender has sent bytes up to 202.\nThe receiver has sent an acknowledgment number of 200 with an rwnd of %d bytes.\nThe size of the sender window is the minimum of rwnd and cwnd, or %d bytes. Bytes 200 to 202 are sent, but not acknowledged.\nBytes 203 to 208 can be sent without worrying about acknowledgment. Bytes 209 and above cannot be sent.",rwnd,window_size);
