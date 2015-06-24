//Example 1.8
//Conversion to Base B from Binary System
//Page no. 8
clc;close;clear;
//conversion from binary to octal
disp(dec2oct(bin2dec('10101101110')),'Octal form of 10101101110 is =');    //inbuilt function

//conversion from binary to hexadecimal
disp(dec2hex(bin2dec('10101101110')),'Hexadecimal form of 10101101110 is =');    //inbuilt function

//conversion from binary to octal
s=dec2oct(bin2dec('1011'));
s1=dec2oct(bin2dec('110011010100'));    //inbuilt function
printf('\n Octal form of 1011.1100110101 is = \n\n %s.%s',s,s1)

//conversion from binary to hexadecimal
s=dec2hex(bin2dec('1011'));
s1=dec2hex(bin2dec('110011010100'));    //inbuilt function
printf('\n\n Hexadecimal form of 1011.1100110101 is = \n\n %s.%s',s,s1)