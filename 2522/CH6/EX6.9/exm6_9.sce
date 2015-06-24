//page no 187
//example no 6.9
//TURN OFF THE AIR CONDITIONER.
//to turn OFF the air conditioner, reset bit D7
//Assuming the same input as earlier as it is a continuation of previous example.
clc;
A=[1 0 1 0 1 0 1 0];
B=[0 1 1 1 1 1 1 1];
Y=bitand(A,B); //ANDing input (A) with B to keep the D4 bit always set
disp(Y);
printf('D7 bit will always be zero without affecting the other bits');
