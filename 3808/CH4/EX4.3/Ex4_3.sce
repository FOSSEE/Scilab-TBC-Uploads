//Chapter 04:Number Theory and Cryptography

clc;
clear all;

bin=[]
n=input("Enter the length of the binary number:")
dec=0
disp("Enter the digits one by one")
for i =1:n
    bin(i)=input(" ") 
end
for i=1:n
    dec=dec*2+bin(i)
end
disp(dec,"Decimal Equivalent")

