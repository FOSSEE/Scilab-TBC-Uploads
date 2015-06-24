clc;
clear;
mark_f=60;//Mark Frequency in KHz
space_f=63;//Space Frequency in KHz
input_bit_rate=3;// input bit rate

Peak_Frq_Dev=abs((mark_f-space_f)/2);
B=2*(Peak_Frq_Dev+input_bit_rate);
Baud=input_bit_rate*10^(3);

disp(Peak_Frq_Dev,"Peak Frequency Deviation(in KHz)=");
disp(B,"Minimum Bandwidth(in KHz)=");
disp(Baud,"Baud rate=");
