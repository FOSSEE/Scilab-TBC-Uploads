//Example 4 Page No: 1.84
//given
clear
a=50;
vi=20e-3;
sr=0.5e6;
//determine max frequency
format(6);
vm=a*vi;
freq1=sr/(2*3.14*vm);
disp('max frequency of input is = '+string(freq1/10^3)+' Khz');
