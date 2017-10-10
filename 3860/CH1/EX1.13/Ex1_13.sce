//Example 1.13: storage format for negative numbers in two’s complement using three-step approach:
clc // clears the console window
clear // clears the variable browser1 
//***************************************************************************
x= bitcmp (5,4)// complement of decimal number 5 in 4 bit representation.
y=1;
z=x+y //1 is added to the complement.
a= dec2bin (z) //binary equivalent of decimal number.
disp ( '-5 in 2''s complement form is=')
disp (a)// 2's complement result.
//**************************************************************************
j= bitcmp (1,4)// complement of decimal number 1 in 4 bit representation.
k=1;
l=j+k //1 is added to the complement.
m= dec2bin (l) //binary equivalent of decimal number.
disp ( '-1 in 2''s complement form is=')
disp (m)// 2's complement result.
//**************************************************************************
p= bitcmp (0,4)// complement of decimal number 0 in 4 bit representation.
q=1;
r=p+q //1 is added to the complement.
s= dec2bin (r-(2^4),4) //binary equivalent of decimal number.
disp ( '-0 in 2''s complement form is=')
disp (s)// 2's complement result.
