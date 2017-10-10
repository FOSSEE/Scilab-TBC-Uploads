//Chapter 04:Number Theory and Cryptography

clc;
clear all;

function dec_hex(num)
rem=[]
i=1
len=0
while num >0
    rem(i)=pmodulo(num,16)
    num=int(num/16)
    i=i+1
    len=len+1
end
disp("Hexadecimal Equivalent:")
for i=len:-1:1
    select rem(i)
    case 10 then
        disp('A')
    case 11 then
        disp('B')
    case 12 then
        disp('C')
    case 13 then
        disp('D')
    case 14 then
        disp('E')
    case 15 then
        disp('F')
    else
        disp(rem(i))
end
end
endfunction

inp=input("Enter the decimal number:")
dec_hex(inp)
