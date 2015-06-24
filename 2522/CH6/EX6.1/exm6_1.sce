//page no 164
//example no 6.1
//LOAD A DATA TO ONE REGISTER AND MOVE IT TO ANOTHER.
clc;
A=hex2dec(['82']); //storing the decimal value of hexadecimal no 82 in accumulator A
B=dec2hex([A]); //storing the hexadecimal value of A in B
print(%io(2),B); //displaying the hexadecimal number in register B
