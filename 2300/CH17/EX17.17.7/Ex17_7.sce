//scilab 5.4.1
//Windows 7 operating system
//chapter 17 Number Systems,Boolean Algebra,and Digital Circuits
clc
clear
x='11111'
y='1011'
z='101'
w='10'
v='1'
s1=bin2dec(x)
s2=bin2dec(y)
s3=bin2dec(z)
s4=bin2dec(w)
s5=bin2dec(v)
a=s1+s2+s3+s4+s5
b=dec2bin(a)
disp(,b,"Binary addition of 11111+1011+101+10+1 is ")
disp(,a,"Decimal equivalent corresponding to above binary addition is ")
