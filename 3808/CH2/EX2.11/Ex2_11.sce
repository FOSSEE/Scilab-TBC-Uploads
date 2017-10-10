//Chapter 02:Basic Structures: Sets, Functions, Sequences, Sums and Matrices

clc;
clear;

//Finding the summation of j**2
up=input("Enter the upper limit for the operation j**2:");
low=input("Enter the lower limit for the operation j**2:");
sum_j=0
mprintf("\nThe square of terms from 1 to n :\n")
for j=low:up 
mprintf("%d **2 +",j),
    j=j**2 
    sum_j=sum_j+j
end
mprintf("=%d",sum_j)
