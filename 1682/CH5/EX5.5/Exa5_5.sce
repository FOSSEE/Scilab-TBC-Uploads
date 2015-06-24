//Exa 5.5
clc;
clear;
close;
//Machine A :
disp("Machine A: ");
P=400000;//in Rs
A=40000;//in Rs
S=200000;//in Rs
i=12;//in % per annum
n=4;//in years
//Formula : (F/P,i,n) : (1+i/100)^n
//Formula : (F/A,i,n) : (((1+i/100)^n)-1)/(i/100)
FW_A=(P*(1+i/100)^n)+(A*(((1+i/100)^n)-1)/(i/100))-S;//in RS
disp(FW_A,"The future worth amount of Machine A in RS. : ");

//Machine B :
disp("Machine AB: ");
P=800000;//in Rs
A=0;//in Rs
S=550000;//in Rs
i=12;//in % per annum
n=4;//in years
//Formula : (F/P,i,n) : (1+i/100)^n
//Formula : (F/A,i,n) : (((1+i/100)^n)-1)/(i/100)
FW_B=(P*(1+i/100)^n)+(A*(((1+i/100)^n)-1)/(i/100))-S;//in RS
disp(FW_B,"The future worth amount of Machine B in RS. : ");
disp("The future worth of Machine A is less than that of Machine B. Thus, Machine A should be selected.");
//Note : Calculation in the book is not accurate.