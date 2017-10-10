//Chapter 04:Number Theory and Cryptography

clc;
clear all;

bin_a=[]
i=1
rem=0
n1=input("Enter 1st binary number:")
n2=input("Enter 2nd binary number:")
t1=n1
t2=n2
while (n1~=0 | n2~=0)
    bin_a($+i)=modulo((modulo(n1,10)+modulo(n2,10)+rem),2)
    rem=(modulo(n1,10)+modulo(n2,10)+rem)/2
    n1=int(n1/10)
    n2=int(n2/10)
end
if rem ~=0 then
    bin_a($+i)=rem
end
bin_a=int(bin_a)
bin_a=flipdim(bin_a,1)
mprintf("The sum of binary numbers %d and %d is",t1,t2)
disp(bin_a)
