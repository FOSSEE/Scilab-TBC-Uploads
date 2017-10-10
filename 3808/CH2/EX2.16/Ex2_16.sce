//Chapter 02:Basic Structures: Sets, Functions, Sequences, Sums and Matrices

clc;
clear;

matA=[]
mprintf("Enter the dimensions of MATRIX A:")
row=input("Enter the no. of rows:")
col=input("Entet the no.of columns:")
mprintf("Enter the elements:")
for i=1:row
    for j=1:col
        mprintf('\nInput for Row %d , Column %d:',i,j)
        n=input(" ")
        matA(i)(j)=n
end
end

matB=[]
mprintf("Enter the dimensions of MATRIX B:")
row1=input("Enter the no. of rows:")
col1=input("Entet the no.of columns:")
mprintf("Enter the elements:")
for i=1:row1
    for j=1:col1
        mprintf('\nInput for Row %d , Column %d:',i,j)
        n=input(" ")
        matB(i)(j)=n
end
end
mprintf("Matrix A:")
disp(matA)
mprintf("Matrix B:")
disp(matB)
matADD=matA+matB
mprintf("Sum of Matrices:")
disp(matADD)
