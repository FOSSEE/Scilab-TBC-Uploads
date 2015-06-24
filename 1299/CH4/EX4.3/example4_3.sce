//Example 4.3
//for given matrix "A" proving eigen values of "A"="t^-1*A*T"
clear;clc;
xdel(winsid());
A=[0 1 0;0 0 1;-6 -11 -6] 
P=bdiag(A) //eigen values of "A"

T=[1 1 1;-1 -2 -3; 1 4 9] //vandermode matrix
inv(T)

A1=inv(T)*A*T  //diagonal canonical form of A

//thus "P=A1" is proved.



