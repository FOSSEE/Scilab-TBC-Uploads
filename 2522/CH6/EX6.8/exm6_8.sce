//page no 186
//example no 6.8
//KEEPING THE RADIO ON.
//to keep the radio on without affecting the other appliances, the D4 bit should always be 1
//assuming an input input binary 10101010
clc;
A=[1 0 1 0 1 0 1 0];
B=[0 0 0 1 0 0 0 0];
Y=bitor(A,B); //ORing input (A) with B to keep the D4 bit always set
disp(Y);
printf('D4 bit will always be one without affecting the other bits');
