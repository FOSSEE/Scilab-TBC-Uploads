//Example 24.6. perform the binary divisions
clc
x=bin2dec('110')
x1=bin2dec('10')
x2=x/x1
x3=dec2bin(x2)
disp("(i) 110 / 10")
disp(x3,"  = binary")
disp(x2,"  = decimal")
x=bin2dec('1111')
x1=bin2dec('110')
x2=x/x1
x3=dec2bin(int(x2));
disp("(ii) 1111 / 110")
disp(x3,"  = binary")
disp(x2,"  = decimal")