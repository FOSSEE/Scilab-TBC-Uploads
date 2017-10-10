//Chapter 04:Number Theory and Cryptography

clc;
clear all;

arr=[]
n=input("Enter the number:")
tn=n
while n~=0
    re=pmodulo(n,8)
    n=int(n/8)
    arr($+1)=re
end
mprintf("The octal equivalent of the decimal number %d is:",tn)
for i=length(arr):-1:1
    mprintf("%d",arr(i))
end
