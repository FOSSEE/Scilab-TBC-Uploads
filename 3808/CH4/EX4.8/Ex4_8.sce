//Chapter 04:Number Theory and Cryptography

clc;
clear all;

bin_eq=[]
decn=input("Enter the decimal number:")
tn=decn
i=1
b=floor(decn/2)
rem=modulo(decn,2)
bin_eq(i)=string(rem(i))
while 2<=b
    decn=b
    i=i+1
    b=floor(decn/2)
    rem=modulo(decn,2)
    bin_eq(i)=string(rem)
end
bin_eq(i+1)=string(b)
bin_eq=eval(bin_eq)
mprintf("The binary equivalent of the decimal number %d is:",tn)
for i=length(bin_eq):-1:1
    mprintf("%d",bin_eq(i))
end
