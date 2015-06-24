//Example 11-1//
// % Resolution of a five bit D/A converter//
clc
//clears the console//
clear
//clears all existing variables//
n=5
//here n is the number of bits//
disp('Max number that can be represented using 5 bits is the binary number 11111 ie 31 in decimal form ')
pres=(1/((2^n)-1))*100
//pres denotes the percent resolution//
disp(' Therefore the percent resolution of the 5 bit D/A converter is : ')
disp(pres)
//answer is displayed//
