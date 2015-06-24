//example 10.7
clc;
clear;
mod = input("Enter the n value in your desired mod-n counter:");//taking the input
m=mod;
while 1
 n= log2(mod); //checking whether the given number is a power of 2 
 k=modulo(n,1);
 if k==0  then
     printf('The number of flip flops used in mod-%d counter are:',m); // if yes the print th outpu.
     printf('%d',n);
     return;
 end
 mod =mod+1;
 end

