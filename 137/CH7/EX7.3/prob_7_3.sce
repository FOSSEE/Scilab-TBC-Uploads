clc;
//page no 326
//prob no 7.3
// problem fig. is ggiven on page no 324. Referring the fig. we are given the values of a0,a1,a-1,a-2
a=1;b=-0.3;c=0.1;d=-0.2;e=0.05;
//design a three-tap (N=1) equalizer by substituting these values into eq no 7.45 of the page no 325
A=[0;1;0];
B=[a d e;b a d;c b a];
c=inv(B)*A;// As, A=B*C Hence c is obtained as given
disp(c);// values of C-1,C0,C1 are obtained