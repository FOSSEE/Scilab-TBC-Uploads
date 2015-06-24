// Example 11.1: Open-loop gain, Return ratio, Reverse transmission β of feedback circuit
clc, clear
// Let A be open-loop gain and B be return ratio
// For A, B 10% higher, -1.1A + 55.11B = -50.1
// For A, B 10% lower, -0.9A + 44.91B = -49.9
// Solving the two equations
a=[-1.1 55.11; -0.9 44.91];
b=[-50.1; -49.9];
c=inv(a)*b;
A=c(1,1);
B=c(2,1);
disp(A,"Open-loop gain =");
disp(B,"Return ratio =");
disp(B/A,"Reverse transmission β of the feedback circuit =");