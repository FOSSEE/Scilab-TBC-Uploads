//exmaple 10.10(a)//
clc
//clears the screen//
clear
//clears all existing variables//
ctp=1/(10*10^6);
//clock time period in seconds//
act=(2^8-1)/2*ctp*10^6;
//Average conversion time in case of counter type A/D converter//
disp(act, 'Average conversion time in case of counter type A/D converter (in micro sec) =')