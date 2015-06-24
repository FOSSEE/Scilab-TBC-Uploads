//Exa 9.9
clc;
clear;
close;
//Given data :
K=0.1;//shunt to mutual capacitance ratio
CbyC1=10;
C2byC1=(1+K)*CbyC1;
C3byC1=(1+3*K)*CbyC1;
C4byC1=(1+6*K)*CbyC1;
disp("C2 is "+string(C2byC1)+" times of C1");
disp("C3 is "+string(C3byC1)+" times of C1");
disp("C4 is "+string(C4byC1)+" times of C1");
//I5=I4+i4
//omega*C5*v=omega*C4*v+omega*C1*4*v
C5byC1=(1+10*K)*CbyC1;
disp("C5 is "+string(C5byC1)+" times of C1");
//I6=I5+i5
//omega*C6*v=omega*C5*v+omega*C1*5*v
C6byC1=(1+15*K)*CbyC1;
disp("C6 is "+string(C6byC1)+" times of C1");
