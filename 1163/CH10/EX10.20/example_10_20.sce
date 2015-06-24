clear;
clc;
disp("--------------Example 10.20---------------")
n=21;
// compute one's complement
bin=dec2bin(n);
s=strsplit(bin,1);
a=bin2dec(s(1));
b=bin2dec(s(2));
f=a+b;
complement=dec2bin(f,4); //1's complement
dec_complement=bin2dec(complement); // convert 1's complement to decimal
printf("The number %d in ones complement arithmetic using only four bits is %s or %d.",n,complement,dec_complement); // display result
