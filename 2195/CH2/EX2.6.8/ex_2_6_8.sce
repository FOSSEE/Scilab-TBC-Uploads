//Example 2.6.8. // limiting value of current and % limiting error
clc;
clear;
close;
//given data :
As=2.5;// in A
fsd=10;//full scale reading in A
A=1.5/100;
del_A=A*fsd;
At1=As+del_A;
At2=As-del_A;
disp(At1,"limiting value of current,At1(A) = ")
disp(At2,"limiting value of current,At2(A) = ")
e=(del_A/As)*100;
disp(e,"percentage limiting error,e(%) = ")
