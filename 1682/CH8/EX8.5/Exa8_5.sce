//Exa 8.5
clc;
clear;
close;
//Alternative 1: Old deisel Engine :
Pprice=50000;//in Rs
P=15000;//in Rs
F=8000;//in Rs
A=14000;//in Rs
i=15;//in % per annum
n=5;//in years
//Formula : (A/P,i,n) : ((i/100)*(1+i/100)^n)/(((1+i/100)^n)-1) 
AE1=(P-F)*((i/100)*(1+i/100)^n)/(((1+i/100)^n)-1)+F*i/100+A;//in RS
disp(AE1,"The annual equivalent cost(AE(15%)) of this alternative in RS. : ");

//Alternative 2: New deisel Engine :
P=65000;//in Rs
F=13000;//in Rs
A=9000;//in Rs
i=15;//in % per annum
n=20;//in years
//Formula : (A/P,i,n) : ((i/100)*(1+i/100)^n)/(((1+i/100)^n)-1) 
AE2=(P-F)*((i/100)*(1+i/100)^n)/(((1+i/100)^n)-1)+F*i/100+A;//in RS
disp(AE2,"The annual equivalent cost(AE(15%)) of this alternative in RS. : ");
disp("Since, The equivalent cost of Old deisel Engine is less than that of New deisel Engine, it is suggested to keep the Old deisel Engine.");