//Example 10-2, Page No -380

clear 
clc

channels =16
sampling_rate= 3.5*10^3
w_len=6

available_ch =channels-1
bpf =channels*w_len
data_rate = sampling_rate * bpf

printf('Available channels are %d',available_ch)
printf('\n Bits Per Frame =%d',bpf)
printf('\n The serial data rate %.1f Khz',data_rate/10^3)
 
