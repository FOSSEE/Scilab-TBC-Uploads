//Chapter 02:Basic Structures: Sets, Functions, Sequences, Sums and Matrices

clc;
clear;

//To generate a sequence a_n=1/n
i=1.0 //floating point division
n=input("Enter the number of terms in the sequence:");
mprintf("\na_n=1/n")
mprintf("\nWhen n=%d   a_n is:",n)
for i=1:n //iteration till the number of terms specified by the user
a=1.0/i
mprintf( "\n1/%d,\t",i)
end
for i=1:n //iteration till the number of terms specified by the user
a=1.0/i
mprintf("\n%f,\t",a)
end
