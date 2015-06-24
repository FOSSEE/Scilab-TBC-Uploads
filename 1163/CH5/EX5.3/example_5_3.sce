clear;
clc;
disp("--------------Example 5.3---------------")
d=1;
r=1;
B=100; // 100 kHz
fl=200; // lower frequency=200 kHz
fh=300; // highest frequency =300 kHz
middle_bandwidth = (fl+fh)/2; // kHz
Fc=middle_bandwidth; // carrier frequency
N=(B*r)/2; // B= (1+d)*S = 2*N*(1/r) , N - bit rate
printf("\nThe carrier frequency is %d kHz.\nThe bit rate is %d kbps.",Fc,N); //display result

