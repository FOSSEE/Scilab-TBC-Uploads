clear;
clc;
disp("--------------Example 6.6---------------")
data_rate=1*10^6; // data rate for each input connection is 1 Mbps
unit =1; // 1 bit
n=4; //number of channels
//a) input bit duration
ip_bd=1/data_rate;
printf("a) The input bit duration is %d microseconds.\n",ip_bd*10^6); //display result
//b)output bit duration
op_bd=ip_bd/n;
printf("\nb) The output bit duration is %3.2f microseconds.\n",op_bd*10^6);//display result
// c) output bit rate
op_bitrate=1/op_bd;
printf("\nc) The output bit rate is %d Mbps.\n",op_bitrate*10^-6);//display result
//d) output frame rate
frame_rate=data_rate;
printf("\nd) The frame rate is %d frames per second.",frame_rate);//display result
