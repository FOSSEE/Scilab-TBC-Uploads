//Example 3.9
//Program to remaining samples of the sequence
//X(0)=12,X(1)=-1+j3,X(2)=3+j4,X(3)=1-j5,X(4)=-2+j2,X(5)=6+j3,X(6)=-2-j3,X(7)=10
clear;
clc ;
close ;
j=sqrt(-1);
z=1;
X(0+z)=12,X(1+z)=-1+j*3,X(2+z)=3+j*4,X(3+z)=1-j*5,X(4+z)=-2+j*2,X(5+z)=6+j*3,X(6+z)=-2-j*3,X(7+z)=10;
for a=9:1:14 do X(a)=conj(X(16-a)), end; 
//Display the complete sequence X[k] in command window
disp(X,"X[k]=");