clc
clear
disp("Example 8.19")
printf("\n")
disp("convert the following binary numbers to hexadecimal")
disp("a)101110 b)11010 c)1011101")
//this program, converts only integer part to decimal
bin='101110'
dec=bin2dec(bin)
Hdec=dec2hex(dec)
printf("decimal=%s",Hdec)
