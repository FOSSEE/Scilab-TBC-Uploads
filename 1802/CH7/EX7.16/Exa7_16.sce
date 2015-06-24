//Exa 7.16
clc;
clear;
close;
//Given data : 
format('v',5);
//Applying KVL in loop AFEDA: (0.016*x)+0.09*(x-30)+0.14*(x-17)-0.1*y=0
//Applying KVL in loop ADCBA: 0.1*y-0.12*(95-x-y)-.01*(145-x-y)-0.008*(165-x-y)=0
//Equating two equtions we get
//3.9*x-125=97.75-0.75*x
x=(97.75+125)/(3.9+0.75);//in A
y=97.75-0.75*x;//in A
disp(x,"x(in A)=");
disp(y,"y(in A)=");
disp("Thus the point of minimum ppotential is E.");