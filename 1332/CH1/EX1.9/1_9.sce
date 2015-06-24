//Example 1.9
//Conversion to Binary System
//Page no. 8
clc;close;clear;
//conversion from octal to binary
disp(dec2bin(oct2dec('1753')),'Binary form of 1753 is =');    //inbuilt function

//conversion from octal to binary
disp(dec2bin(hex2dec('A478')),'Binary form of A478 is =');    //inbuilt function

//conversion from octal to binary
s=dec2bin(oct2dec('3'));
s1=dec2bin(oct2dec('154'));    //inbuilt function
printf('\n Octal form of 3.154 is = \n\n %s.00%s',s,s1)