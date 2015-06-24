clear;
clc;
disp("--------------Example 6.5---------------")
data_rate=1*10^3; // data rate for each input connection is 1 kbps
unit =1; // 1 bit
n=3; // number of channels
// a) duration of each input slot
bit_duration = 1/data_rate;
ip_timeslot=bit_duration;
printf("a) The duration of each input time slot is %d ms.\n",ip_timeslot*10^3); //display result
//b) duration of each output slot
op_timeslot=ip_timeslot/n;
printf("\nb) The duration of each output time slot is %3.2f ms.\n",op_timeslot*10^3); //display result
// c)what is the duration of each frame
frame_time = n*op_timeslot;
printf("\nc) The duration of each frame is %d ms.\n",frame_time*10^3);//display result
