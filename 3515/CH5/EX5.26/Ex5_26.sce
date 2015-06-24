// Exa 5.26
format('v',7);
clc;
clear;
close;
// Given data
Is= 100;// in µA
Is= Is*10^-6;// in A
If= 95;// in µA
If= If*10^-6;// in A
Io= 10;// in mA
Io= Io*10^-3;// in A
A= Io/(Is-If);// n A/A
Bita= If/Io;// A/A
disp(A,"Value of A in A/A is : ")
disp(Bita,"Value of Bita in A/A is : ")

// Note: In the book , to evaluating the value of Bita, they putted wrong value of If (95 at place of 90)
