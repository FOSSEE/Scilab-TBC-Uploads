//example 11.2(a)//
//maximum rate at which data can be stored//
clc
//clears the screen//
clear
//clears already existing variables//
disp('the maximum rate at which data can be stored is:')
t=200*(10^-9);
//write cycle time//
r=1/t;
//maximum rate//
disp(r)
disp('words/sec')