//Ex10_9
clc
h='48';
disp("Hexadecimal number="+string(h))//hexadecimal
d=hex2dec(h)// converting hexadecimal to decimal
str=dec2bin(d)// converting decimal to binary
disp("Eqivalent Binary number="+string(str))
