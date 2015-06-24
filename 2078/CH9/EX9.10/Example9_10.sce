//Exa 9.10
clc;
clear;
close;
//Given data :
n=8;//no. of units
p=1:8;
//Cp=p*C/(n-p)
C1byC=1/(n-p(1));
C2byC=2/(n-p(2));
C3byC=3/(n-p(3));
C4byC=4/(n-p(4));
C5byC=5/(n-p(5));
C6byC=6/(n-p(6));
C7byC=7/(n-p(7));
disp("C1 is "+string(C1byC)+" times of C");
disp("C2 is "+string(C2byC)+" times of C");
disp("C3 is "+string(C3byC)+" times of C");
disp("C4 is "+string(C4byC)+" times of C");
disp("C5 is "+string(C5byC)+" times of C");
disp("C6 is "+string(C6byC)+" times of C");
disp("C7 is "+string(C7byC)+" times of C");
