//=====================================================================================
//Chapter 14 example 5
clc;
clear all;

//variable declaration
t       = 5*10^6;   //time reaading in ms
t2       = 500;   //time reaading in ms
x       = 0.005;     //accuracy in percent of reading
t3       = 500*10^3;   //time reaading in ms

//calculations
e       = ((x/100)*t)+1;      //maximum likely timing error in ms
e1      = ((x/100)*t2)+1;      //maximum timing error in ms
a       = t2*10^6;          //maximum accuracy mininum error will be obtained when the time is read on the us read
e3      = ((x/100)*t3)+1;      //maximum timing error in ms

//result
mprintf("maximum likely timing error  when time reading is 05000000 ms = %3.2f ms",e);
mprintf("\nmaximum   timing error  when time reading is 00000500 ms = %3.2f ms",e1);
mprintf("\nmaximum  error  when time reading is 00500000 = %3.2f ms",e3);





