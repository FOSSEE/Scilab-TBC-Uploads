//Chapter 04:Number Theory and Cryptography

clc;
clear all;

//GCD using recursion
function f=gcd(n,m)
    if (n>=m) & (modulo(n,m)==0) then
        f=m
    else
        f=gcd(m,modulo(n,m))
    end
endfunction

a=input("Number 1:")
b=input("Number 2:")
ann=gcd(a,b)
mprintf("GCD(%d,%d) is:%d",a,b,ann)
