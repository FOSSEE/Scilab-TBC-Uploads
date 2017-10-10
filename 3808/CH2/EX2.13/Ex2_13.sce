//Chapter 02:Basic Structures: Sets, Functions, Sequences, Sums and Matrices

clc;
clear;

j=[]
s=[]
i=0
upj=input("Enter the upper limit for the inner summation:");
lowj=input("Enter the lower limit for the inner summation:");
upi=input("Enter the upper limit for the outer summation:");
lowi=input("Enter the lower limit for the outer summation:");
for i=lowj:upj+1
    j=j+1
end
for l=lowi:upi+1
    s=s+(j*l)
end
mprintf("%d",s)
