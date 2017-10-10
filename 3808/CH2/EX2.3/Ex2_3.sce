//Chapter 02:Basic Structures: Sets, Functions, Sequences, Sums and Matrices

clc;
clear;

n=input("Enter the no. of terms in the sequence to generate the GP:");
i=1
mprintf("\nThe list of terms:")
for i=0:n
    mprintf("b%d ,\t",i)
end
mprintf("begins with   ")
for i=0:n //iterate for the number of terms given as input
    b_n=(-1)**i
    mprintf("%d ,",b_n)
end
mprintf("\nThe list of terms:")
for i=0:n
    mprintf("c%d ,\t",i)
end
mprintf("begins with   ")
for i=0:n  //iterate for the number of terms given as input
    c_n=2*(5**i)
    mprintf("%d ,",c_n)
end
mprintf("\nThe list of terms:")
for i=0:n
    mprintf("c%d ,\t",i)
end
mprintf("begins with   ")
for i=0:n  //iterate for the number of terms given as input
    d_n=6.0*((1.0/3.0)**i)
    mprintf("%f ,",d_n)  //prints the fraction values in decimals.  Floating point division
end
