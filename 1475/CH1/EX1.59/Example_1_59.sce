// Example 1.59 A box contains 4 white 6 black balls
clc;
clear;
A0=((factorial(4)/(factorial(0)*factorial(4)))*(factorial(6)/(factorial(3)*factorial(3))))/(factorial(10)/(factorial(7)*factorial(3)));
A1=((factorial(4)/(factorial(1)*factorial(3)))*(factorial(6)/(factorial(2)*factorial(4))))/(factorial(10)/(factorial(7)*factorial(3)));
A2=((factorial(4)/(factorial(2)*factorial(2)))*(factorial(6)/(factorial(1)*factorial(5))))/(factorial(10)/(factorial(7)*factorial(3)));
A3=((factorial(4)/(factorial(3)*factorial(1)))*(factorial(6)/(factorial(0)*factorial(6))))/(factorial(10)/(factorial(7)*factorial(3)));
disp(A0*0+A1*1+A2*2+A3*3,"The mathematical expectation of the number of white balls",A0,"Probab. of 0 white balls",A1,"Probab. of 1 white balls",A2,"Probab. of 2 white balls",A3,"Probab. of 3 white balls",3,"X3=",2,"X2=",1,"X1=",0,"X0=","The possible values of x ");
