//Exa 5.1
clc;
clear;
close;
//Alternative A :
disp("Alternative A : ");
P=5000000;//in Rs
A=2000000;//in Rs
i=18;//in % per annum
n=4;//in years
//Formula : (F/P,i,n) : (1+i/100)^n
//Formula : (F/A,i,n) : (((1+i/100)^n)-1)/(i/100)
FW_A=(-P*(1+i/100)^n)+(A*(((1+i/100)^n)-1)/(i/100));//in RS
disp(FW_A,"The future worth amount of alternative A in RS. : ");

//Alternative B :
disp("Alternative B : ");
P=4500000;//in Rs
A=1800000;//in Rs
i=18;//in % per annum
n=4;//in years
//Formula : (F/P,i,n) : (1+i/100)^n
//Formula : (F/A,i,n) : (((1+i/100)^n)-1)/(i/100)
FW_B=(-P*(1+i/100)^n)+(A*(((1+i/100)^n)-1)/(i/100));//in RS
disp(FW_B,"The future worth amount of alternative B in RS. : ");
disp("The future worth of alternative A is greater than that of alternative B. Thus, alternative A should be selected.");
//Note : Calculation in the book is not accurate.