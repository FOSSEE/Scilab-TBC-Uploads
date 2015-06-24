//Example 9.38.
clc
disp("(a) From equation(1) we have,")
r=2^8
format(4)
disp(r,"Resolution = 2^8 =")
disp("and from equation(2) we have,")
disp("Resolution = 5.1V/(2^8 - 1) = 20 mV/LSB")
disp("Therefore, we can say that to change output by 1 LSB we have to change input by 20 mV")
disp("(b) For 1.28 V analog input, digital output can be calculated as,")
d=1.28/(20*10^-3)
format(3)
disp(d,"D (in LSBs) = 1.28V / 20 mV/LSB =")
disp("The binary equivalent of 64 is 0100 0000")
