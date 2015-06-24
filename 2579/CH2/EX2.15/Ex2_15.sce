//Ex:2.15
clc;
clear;
close;
Pi=400*10^-3;// input power to reference Antenna
Pt=100*10^-3;// input power to test antenna
Gdb=10*log(Pi/Pt)/log(10);// power gain in dB
printf("The power gain = %f dB", Gdb);