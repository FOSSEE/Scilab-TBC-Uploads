//Exa 8.6
clc;
clear;
close;
//Alternative 1: Reinforce the existing bridge
disp("Alternative 1: Reinforce the existing bridge.");
P=660000;//in Rs
F=400000;//in Rs
A=96000;//in Rs
i=10;//in % per annum
n=5;//in years
//Formula : (A/P,i,n) : ((i/100)*(1+i/100)^n)/(((1+i/100)^n)-1) 
AE1=(P-F)*((i/100)*(1+i/100)^n)/(((1+i/100)^n)-1)+F*i/100+A;//in RS
disp(AE1,"The annual equivalent cost(AE(10%)) of this alternative in RS. : ");

//Alternative 2: Replace the existing bridge by a new prestressed concrete bridge
disp("Alternative 2: Replace the existing bridge by a new prestressed concrete bridge.");
P=150000;//in Rs
X=420000;//in Rs
i=10;//in % per annum
n=40;//in years
//Formula : (A/P,i,n) : ((i/100)*(1+i/100)^n)/(((1+i/100)^n)-1) 
AE2=(P-X)*((i/100)*(1+i/100)^n)/(((1+i/100)^n)-1)+F*i/100+A;//in RS
disp(AE2,"The annual equivalent cost(AE(10%)) of this alternative in RS. : ");
disp("Since, The equivalent cost of alternative 2 is less than that of alternative 1, it is suggested that alternative 2 should be selected.");
//Note  : calculations in the book is not accurate.