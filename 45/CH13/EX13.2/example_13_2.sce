//example 13.2
clc;
clear;
close; 
//cp = input('enter the capacity of the memory system in bits :');
cp=1024; // given capacity
n= log2(cp);
printf('The no of bits in the address word are : %d\n',n);
printf('The number of required rows are : %d\n',2^(n/2));
printf('The number of required columns are : %d',2^(n/2));
