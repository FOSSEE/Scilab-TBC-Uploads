//example 11.2(b)//
//maximum rate at which data can be read//
clc
//clears the screen//
clear
//clears already existing variables//
disp('the maximum rate at which data can be read is:')
t=200*(10^-9);
//read cycle time//
r=1/t;
//maximum rate//
disp(r)
disp('words/sec')