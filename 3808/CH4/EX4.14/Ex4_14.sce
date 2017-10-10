//Chapter 04:Number Theory and Cryptography

clc;
clear all;

n1=input("Number 1:")
n2=input("Number 2:")
a=n1
b=n2
while n1 ~=n2
    if n1>n2 then
        n1=n1-n2
    else
        n2=n2-n1
    end
end
mprintf("GCD(%d,%d) is:%d",a,b,n1)
