// to find the minimum time/division sensitivity
// example 9-12 in page 278
clc;
//Data Given
f=50e+6;// frequency of the waveform in hertz
//calculation
T=1/f;//time period in seconds
printf("using the five times magnifier,\n");
printf("minimum time/div setting=%d ns/div",5*(T/4)*10^9);// here one cycle occupies 4 horizontal divisions
//result
//using the five times magnifier,
//minimum time/div setting=25 ns/div 