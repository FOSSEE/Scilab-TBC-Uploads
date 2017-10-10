//Chapter 04:Number Theory and Cryptography

clc;
clear all;

n=input("Enter the number:")
c=0
for i =2:n-1
    if modulo(n,i)==0 then
        c=c+1
    end
end
if c==0 then
    mprintf("%d is a prime number",n)
else
    mprintf("%d is not a prime number",n)
end
