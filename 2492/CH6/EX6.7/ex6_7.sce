// Exa 6.7
format('e',9)
clc;
clear;
close;
// Given data
f_o = 1;// in kHz
f_o = f_o * 10^3;// in Hz
// f_o = 1/(2*%pi*Rc);
RC = 1/(2*%pi*f_o);
disp(RC,"The value of RC is : ")
disp("So R and C can be choosen as 15.9 kΩ and 0.01 µF respectively.")
