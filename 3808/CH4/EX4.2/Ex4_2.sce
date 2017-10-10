//Chapter 04:Number Theory and Cryptography

clc;
clear all;

//To find the quotient and remainder

dividend=-11
divisor=3
quotient=(dividend/divisor) //To find quotient
remainder=pmodulo(dividend,divisor) //To find remainder
dividend_a=(divisor*quotient)+remainder //To find dividend
mprintf("The quotient when %d is divided by %d is %.f = %d div %d and the remainder is %d = %d mod %d",dividend,divisor,quotient,dividend,divisor,remainder,dividend,divisor)
