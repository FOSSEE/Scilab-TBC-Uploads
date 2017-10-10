//Chapter 04:Number Theory and Cryptography

clc;
clear all;

i=0
oct=input("Enter the octal number:")
tmp=oct
dec=0
while(oct~=0)
    dec=dec+(modulo(oct,10))*(8**(i+0))
    i=i+1
    oct=int(oct/10)
end
disp(dec,'Equivalent Decimal Value:')
