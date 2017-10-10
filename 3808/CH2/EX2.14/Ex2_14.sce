//Chapter 02:Basic Structures: Sets, Functions, Sequences, Sums and Matrices

clc;
clear;

s=0
res=[]
mprintf("Sum of values of s for all the members of the set { ")
for s=0:2:4
    mprintf("%d ",s)
    res=res+s
end
mprintf("} is %d",res)
