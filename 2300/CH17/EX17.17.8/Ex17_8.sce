//scilab 5.4.1
//Windows 7 operating system
//chapter 17 Number Systems,Boolean Algebra,and Digital Circuits
clc
clear
x='1101'
y='111'
s1=bin2dec(x)
s2=bin2dec(y)
a=s1-s2
s=dec2bin(a)
disp(,s,"Binary subtraction 1101-111 is =")
