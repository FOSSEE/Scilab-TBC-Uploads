// page no 625
// example no A.4
// 2's COMPLIMENT OF BINARY NUMBER
clc;
printf('Given binary no= 00011100 \n \n');
str='00011100'
d=bin2dec(str);
x=bitcmp(d,8);
s=x+1;
y=dec2bin(s);
printf('2s complement=');
disp(y);
