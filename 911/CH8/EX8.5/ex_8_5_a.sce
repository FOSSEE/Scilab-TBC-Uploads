//example 8.5(a)//
clc
//clears the screen//
clear
//clears the variables//
close
//closes all existing files other than this//
disp('As there are two flip flops so, for first output frequency will be half of the original one while for second flip flop output frequency will be half of the first flip flop, so overall it will be one-fourth of the input frequency')
T=10*(10^-6)
//time period in seconds//
fi=1/T;
//input frequency//
f=fi/4;
//output frequency//
disp(f,'output frequency(in Hz)=')