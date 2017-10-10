//Chapter 02:Basic Structures: Sets, Functions, Sequences, Sums and Matrices

clc;
clear;

n=input("Enter the number terms in the sequence:");
s_n=-1+4*n
t_n=7-3*n
i=0
mprintf("The list of terms:")
for i=0:n-1
    mprintf("s%d ,",i)
end
mprintf("   begins with   ")
for i=0:n-1          //generates the sequence for -1*4i
    t=-1+4*i
    mprintf("%d ,",t)
end
mprintf("\nThe list of terms:")
for i=0:n-1
    mprintf("t%d ,",i)
end
mprintf("   begins with   ")
for i=0:n-1           //generates the sequence for 7-3i
    t=7-3*i
    mprintf("%d ,",t)
end
