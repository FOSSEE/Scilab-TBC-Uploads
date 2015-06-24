//example 18.7
clc; funcprot(0);
// Initialization of Variable
pi=3.14;
F12=0.5;
A1=4;//area in terms of L
A2=2*pi/4;//area in terms of L
F21=A1/A2*F12;
disp(F21,"reciprocity relation between A1 and A2");
//part2
F12=1;
A1=1/16;//area in terms of D
A2=1/2;//area in terms of D
F21=A1/A2*F12;
disp(F21,"reciprocity relation between A1 and A2");
//part3
F22=0.5;
F23=1-F21-F22;
disp(F23,"reciprocity relation");
//part4
F13=0.17;
F12=1-F13;
A1=1/4;//area in terms of D
A2=1;//area in terms of D
F21=A1/A2*F12;
disp(F21,"reciprocity relation between A1 and A2");
clear()
