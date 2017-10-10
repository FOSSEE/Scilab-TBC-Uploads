//Chapter 04:Number Theory and Cryptography

clc;
clear all;

//To find the quotient and remainder 

dividend=101
divisor=11
quotient=int(dividend/divisor) //To find quotient
remainder=modulo(dividend,divisor) //To find remainder
dividend_a=(divisor *quotient)+remainder //To find dividend
mprintf("The quotient when %d is divided by %d is %d = %d div %d and the remainder is %d = %d mod %d",dividend,divisor,quotient,dividend,divisor,remainder,dividend,divisor)
