clear;
clc;
disp("--------------Example 6.11---------------")
N1=100; // bit rate of one channel = 100 kbps
N2=200; // bit rate of other channel = 200 kbps
printf("\n Multiplexing can be achieved by allocating one slot to the first channel and two slots to the second channel.\n");
bits=3; // let each frame carry 3 bits
frame_rate=N1*10^3;
frame_duration=1/frame_rate;
bit_rate=frame_rate*bits;
printf("\nThe frame rate is %d frames per second , the frame duration is %d ms and the bit rate of the link is %d kbps.\n",frame_rate,frame_duration*10^6,bit_rate*10^-3); // display result
