//Chapter 04:Number Theory and Cryptography

clc;
clear all;

//To find the GCD using euclidean algorithm

function gcd(a,b)
    x=a
    y=b
    while y ~=0
        r=modulo(x,y)
        x=y
        y=r
    end
mprintf("GCD(%d,%d) = %d",a,b,x)
endfunction

n1=input("Enter 1st Number:")
n2=input("Enter 2nd Number:")
gcd(n1,n2)
