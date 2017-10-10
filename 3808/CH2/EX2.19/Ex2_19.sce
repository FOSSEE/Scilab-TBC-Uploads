//Chapter 02:Basic Structures: Sets, Functions, Sequences, Sums and Matrices

clc;
clear;

mat=[]

row=input("Enter the no. of rows:")
col=input("Entet the no.of columns:")
mprintf("Enter the elements:")
for i=1:row
    for j=1:col
        mprintf('\nInput for Row %d , Column %d:',i,j)
        n=input(" ")
        mat(i)(j)=n
end
end
mprintf("Original Matrix:")
disp(mat)
matt=mat'
mprintf("Transpose of Matrix:")
disp(matt)

