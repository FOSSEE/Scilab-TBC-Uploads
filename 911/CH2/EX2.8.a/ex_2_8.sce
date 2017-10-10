//example 2.8//
//multiplication in binary form//
clc
//clears the screen //
clear
//clears all the existing variables //
x=bin2dec('100')
//first number to be multiplied is x //
//binary to decima l conversion //
y= bin2dec ('10' )
//second number to be multiplied is y //
z=x*y
//multiplication//
a= dec2bin (z)
//decimal to binary conversion //
disp (a,'the multiplication of given numbers results in binary form = : ' )
disp (z, 'the multiplication of given numbers results in decimal form =: ' )
// answer in binary number //