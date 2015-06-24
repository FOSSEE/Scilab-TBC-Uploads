//Example 24.5. multiply binary numbers
clc
h=bin2dec('1101')
o=bin2dec('1100')
p=h*o
z=dec2bin(p)
disp(z,"(i) 1101 x 1100 = ")
h=bin2dec('1000')
o=bin2dec('101')
p=h*o
z=dec2bin(p)
disp(z,"(ii) 1000 x 101 = ")
h=bin2dec('1111')
o=bin2dec('1001')
p=h*o
z=dec2bin(p)
disp(z,"(iii) 1111 x 1001 = ")