clear;
clc;
disp("--------------Example 10.1---------------")
k=4;
n=5;
datawords=2^k; // number of datawords
codewords=2^n; // number of codewords
printf("The 4B/5B block coding scheme has %d datawords and %d codewords.\n 16 out of 32 codewords are used for message transfer and the rest are either used for other purposes or unused.",datawords,codewords); // display result
