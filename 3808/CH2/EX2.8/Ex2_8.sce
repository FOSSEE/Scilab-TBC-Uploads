//Chapter 02:Basic Structures: Sets, Functions, Sequences, Sums and Matrices

clc;
clear;

f=[0,1,0,0,0,0,0] //given
//index starts from 1 so f0 is not present
mprintf("Fibonacci series is:\n")
for i=3:7
    f(i)=f(i-1)+f(i-2)
    mprintf("f[%d]=f[%d] + f[%d]=%d\n",i,i-1,i-2,f(i))
end
