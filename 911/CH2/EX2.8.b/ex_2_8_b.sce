//example 2.8//
//multiplication in hexadecimal form//
clc
//clears the screen //
clear
//clears all the existing variables //
x=hex2dec('2B')
//first number to be multiplied is x //
//hexadecimal to decima l conversion //
y=hex2dec ('3' )
//second number to be multiplied is y //
z=x*y
//multiplication//
a= dec2hex(z)
//decimal to hexadecimal conversion //
disp (a,'the multiplication of given numbers results in hexadecimal form = : ' )
disp (z, 'the multiplication of given numbers results in decimal form =: ' )
// answer in binary number //