//exmaple 9.1//
clc
//clears the screen//
clear
//clears all existing variables//
a=bin2dec('0000')
//given initial state//
c=bin2dec('0011')
//given final state//
n=input('Enter the loop no = ')
d=(16*(n-1))+c-a;
disp(d,'No of negative clock cycles occured till now= ')