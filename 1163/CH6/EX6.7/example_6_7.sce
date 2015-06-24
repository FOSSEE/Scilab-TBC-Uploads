clear;
clc;
disp("--------------Example 6.7---------------")
data_rate=1*10^3; // data rate for each input connection is 1 kbps
unit =1; // 1 bit
n=4; //number of channels
// (a) the duration of 1 bit before multiplexing
bit_duration=1/data_rate;
printf("a)The duration of 1 bit before multiplexing is %d ms.\n",bit_duration*10^3); //display result
// (b) the transmission rate of the link
trans_rate=n*data_rate;
printf("\nb)The transmission rate of the link is %d kbps.\n",trans_rate*10^-3); //display result
// (c) the duration of a time slot
time_slot = bit_duration/n;
printf("\nc)The duration of each time slot is %d microseconds.\n",time_slot*10^6); //display result
// (d) the duration of a frame
frame_time = bit_duration;
printf("\nd)The duration of each frame is %d ms.\n",frame_time*10^3); //display result
