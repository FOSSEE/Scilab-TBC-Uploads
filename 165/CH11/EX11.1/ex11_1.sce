//Example 11.1
clc;

//Given values of bridge elements
R1=10000;
R2=15000;
R3=40000;
//We Know Balanced bridge equations as
//    R1*R3=R2*R4
Rx=R2*R3/R1;
disp(Rx,'Value of unknown Resistence Rx is')