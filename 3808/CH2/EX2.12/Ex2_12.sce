//Chapter 02:Basic Structures: Sets, Functions, Sequences, Sums and Matrices

clc;
clear;

k=4 //lower limit
sum_a=0
mprintf("The value for the sequence ")
for k=4:8
    if (k==8) then
        mprintf("(-1) ** %d ",k)
        else
    mprintf("(-1) ** %d +",k)
end
sum_a=sum_a + ((-1) ** k)
end
mprintf("=%d",sum_a)
