//Example 11-2//
clc
//clears the console//
clear
//clears all existing variables//
n=6
mpsv=20
//n denotes the number of bits,mpsv denotes the max. precision supply voltage//
disp('Each bit represents 1/(2^6)-1 of the total 20V ')
E1=(1/63)*20
//given a binary number 100110 whose voltage value is to be found//
a=100110
b=bin2dec('100110')
E2=(b/((2^6)-1))*20
disp('The voltage change that each LSB represents is: ')
disp(E1)
disp('The voltage that the binary number 100110 represents is: ')
disp(E2)
//answers are displayed//
