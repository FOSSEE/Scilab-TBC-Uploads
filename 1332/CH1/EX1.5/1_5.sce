//Example 1.5
//Conversion to Binary System
//Page no. 6
clc;close;clear;
//conversion from octal to binary
b=dec2bin(oct2dec('1753'))
disp(b,'Binary form of 1753 is =');    //inbuilt function
b=dec2hex(oct2dec('1753'))
disp(b,'Hexadecimal form of 1753 is =');    //inbuilt function
//conversion from octal to binary
b=dec2bin(hex2dec('A478'))
disp(b,'Binary form of A478 is =');    //inbuilt function
b=dec2oct(hex2dec('A478'))
disp(b,'Octal form of A478 is =');    //inbuilt function
//conversion from octal to binary
s=dec2bin(oct2dec('3'));
s1=dec2bin(oct2dec('154'));    //inbuilt function
printf('\n Octal form of 3.154 is = \n\n %s.00%s',s,s1)
s=dec2hex(oct2dec('3'));
s1=dec2hex(oct2dec('154'));    //inbuilt function
printf('\n\n Hexadecimal form of 3.154 is = \n\n %s.%s',s,s1)