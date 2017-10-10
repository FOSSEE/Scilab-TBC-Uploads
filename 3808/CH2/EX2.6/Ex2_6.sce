//Chapter 02:Basic Structures: Sets, Functions, Sequences, Sums and Matrices

clc;
clear;

a=[2,0,0,0] //given
//index starts from 1 so a0 is not present
for i=2:4
    a(i)=a(i-1)+3
    mprintf("a[%d]=%d\n",i,a(i))
end

mprintf("\nOriginal List:\n")
for i=1:4
mprintf("a[%d]=%d\n",i,a(i))
end
