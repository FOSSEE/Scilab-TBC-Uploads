// Example 11.2: Necessary amount of feedback, Gain without feedback
clc, clear
// Let A be gain without feedback and b be necessary amount of feedback
// AOL can assume values A, 1.1A, 0.9A, i.e. 10% variation
// For AOL = 1.1A yields, 50.01 + 1.1A(50.01b -1) = 0
// When AOL = 0.9A, 49.99 + 0.9A(49.99b - 1) = 0 
// Solving the two equations
a=[1.1*50.01 -1.1; 0.9*44.99 -0.9];
b=[-50.01; -49.99];
c=inv(a)*b;
d=c(1,1); // A*b
A=c(2,1);
b=d/A;
disp(b,"Necessary amount of feedback =");
disp(A,"Gain without feedback =");