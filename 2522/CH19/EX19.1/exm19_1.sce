// page no 622
// example no A.1
// BINARY INTO HEX AND OCTAL
clc;
printf('Binary no= 10011010 \n \n');
str='10011010';
h=bin2dec(str);
H=dec2hex(h);
printf('Hex Equivalent= ');
disp(H);
O=dec2oct(h);
printf('\n Octal Equivalent= ')
disp(O);
