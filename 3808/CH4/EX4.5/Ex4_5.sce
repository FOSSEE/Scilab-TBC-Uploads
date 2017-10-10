//Chapter 04:Number Theory and Cryptography

clc;
clear all;

dec=[]
d=0
i=1
disp('Please enter input in inverted commas')
hex=input("Enter the hexadecimal number:")
l=length(hex)
hex=strsplit(hex)
cn=0
for i=l:-1:1
    select hex(i)
    case 'A' then
        d=10
    case 'B' then
        d=11
    case 'C' then
        d=12
    case 'D' then
        d=13
    case 'E' then
        d=14
    case 'F' then
        d=15
        case 'a' then
        d=10
    case 'b' then
        d=11
    case 'c' then
        d=12
    case 'd' then
        d=13
    case 'e' then
        d=14
    case 'f' then
        d=15
    else
        d=eval(hex(i))
    end
    dec=dec+ (d) *(16**cn)
    cn=cn+1 
end
disp(dec)
