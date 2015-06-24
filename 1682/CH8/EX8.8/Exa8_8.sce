//Exa 8.8
clc;
clear;
close;
//Alternative 1: Old Machine :
disp("Let the comparative use value of old machine be X.")
F=1000;//in Rs
A=7500;//in Rs
i=12;//in % per annum
n=4;//in years
//Formula : (A/P,i,n) : ((i/100)*(1+i/100)^n)/(((1+i/100)^n)-1) 
disp("AE(12%)=(X-F)*((i/100)*(1+i/100)^n)/(((1+i/100)^n)-1)+F*i/100+A;//in RS")

//Alternative 2: New Machine :
P=10000;//in Rs
F=4000;//in Rs
A=500;//in Rs
i=15;//in % per annum
n=4;//in years
//Formula : (A/P,i,n) : ((i/100)*(1+i/100)^n)/(((1+i/100)^n)-1)  
AE=(P-F)*((i/100)*(1+i/100)^n)/(((1+i/100)^n)-1)+F*i/100+A;//in RS
disp(AE,"The annual equivalent cost(AE(15%)) of n in RSew machine : ");
disp("Now equating both annual equivalent cost we get the X.");
disp("X = Rs. 7334.14");
disp("The comparative use value of old machine is Rs. 7334.14, which is less than the price(Rs. 8000) offered by the company which is supplying the new machine in the event of replacing the old machine by nw machine. ");
disp("Therefore, it is advisable to replace the old machine with the new one.");