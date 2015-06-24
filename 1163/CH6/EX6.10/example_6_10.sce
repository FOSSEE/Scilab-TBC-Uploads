clear;
clc;
disp("--------------Example 6.10---------------")
cps=250; // characters per second
unit=8; // 1 unit = 1 character = 8 bits
n=4; //number of sources
sb=1; // 1 synchronization bit
//a)the data rate of each source
data_rate_source=cps*unit;
printf("a)The data rate of each source is %d kps.\n",data_rate_source*10^-3); // display result
// b) the duration of each character in each source
character_duration=1/cps;
printf("\nb)The duration of each character in each source is %d ms.\n",character_duration*10^3); // display result
// c) the frame rate
frame_rate=cps;
printf("\nc)The frame rate is %d frames per second.\n",frame_rate);// display result
// d) the duration of each frame
frame_duration=1/frame_rate;
printf("\nd)The duration of each frame is %d ms.\n",frame_duration*10^3);// display result
//e) the number of bits in each frame
bits=n*unit+sb;
printf("\ne)The number of bits in each frame is %d.\n",bits); // display result
//f) the data rate of the link
data_rate_link=frame_rate*bits;
printf("\nf)The data rate of the link is %d bps.",data_rate_link); // display result

