//Chapter 02:Basic Structures: Sets, Functions, Sequences, Sums and Matrices

clc;
clear;

n1=100
n2=49

//From table 2 summation k^2=(n(n+1)(2n+1))/6

v1=(n1*(n1+1)*(2*n1+1))/6
v2=(n2*(n2+1)*(2*n2+1))/6

v=v1-v2

mprintf("Summation k^2 ,k=50 to 100 is %d",v)
