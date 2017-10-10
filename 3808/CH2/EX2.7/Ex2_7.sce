//Chapter 02:Basic Structures: Sets, Functions, Sequences, Sums and Matrices

clc;
clear;

a=[3,5,0,0] //given
//index starts from 1 so a0 is not present
for i=3:4
    a(i)=a(i-1)-a(i-2)
    mprintf("a[%d]=%d\n",i,a(i))
end
