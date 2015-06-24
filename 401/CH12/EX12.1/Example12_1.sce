//Example 12.1
//Program to determine:
//(a)Bit rate for the system
//(b)The duration of a time slot
//(c)The duration of a frame and multiframe

clear;
clc ;
close ;

//Given data
f=8*10^3;            //Hz - SAMPLING RATE
b=8;                 //bits - SAMPLE SIZE
T=32;                //NUMBER OF TIME SLOTS

//(a)Bit rate for the system
Number_of_bits=T*b;
Bit_rate=f*Number_of_bits
//(b)The duration of a time slot
Bit_duration=1/Bit_rate;
Slot_duration=b*Bit_duration;
//(c)The duration of a frame and multiframe
Duration_of_frame=T*Slot_duration;
Duration_of_multiframe=T/2*Duration_of_frame;

//Displaying The Results in Command Window
printf("\n\n\t  (a)Bit rate for the system is %0.3f Mbit/s.",Bit_rate/10^6);
printf("\n\n\t  (b)The duration of a time slot is %0.1f us.",Slot_duration/10^(-6));
printf("\n\n\t  (c)The duration of a frame is %1.0f us and multiframe is %1.0f ms.",Duration_of_frame/10^(-6),Duration_of_multiframe/10^(-3));