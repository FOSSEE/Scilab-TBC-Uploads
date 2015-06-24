//scilab 5.4.1
//Windows 7 operating system
//chapter 17 Number Systems,Boolean Algebra,and Digital Circuits
clc
clear
A=0
B=0
C=bitor(A,B)//bitwise OR operation is performed
disp(C,"Boolean expression C=A+B for inputs A=0 and B=0 is")
A=1
B=0
C=bitor(A,B)
disp(C,"Boolean expression C=A+B for inputs A=1 and B=0 is")
A=1
B=1
C=bitor(A,B)
disp(C,"Boolean expression C=A+B for inputs A=1 and B=1 is")
