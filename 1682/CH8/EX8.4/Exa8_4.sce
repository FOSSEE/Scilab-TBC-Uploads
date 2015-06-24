//Exa 8.4
clc;
clear;
close;
//Alternative 1: Present machine :
Pprice=200000;//in Rs
P=120000;//in Rs
F=25000;//in Rs
A=25000;//in Rs
i=12;//in % per annum
n=6;//in years
//Formula : (A/P,i,n) : ((i/100)*(1+i/100)^n)/(((1+i/100)^n)-1) 
AE1=(P-F)*((i/100)*(1+i/100)^n)/(((1+i/100)^n)-1)+F*i/100+A;//in RS
disp(AE1,"The annual equivalent cost(AE(12%)) of this alternative in RS. : ");

//Alternative 2: New machine :
P=150000;//in Rs
F=20000;//in Rs
A=14000;//in Rs
i=12;//in % per annum
n=6;//in years
//Formula : (A/P,i,n) : ((i/100)*(1+i/100)^n)/(((1+i/100)^n)-1) 
AE2=(P-F)*((i/100)*(1+i/100)^n)/(((1+i/100)^n)-1)+F*i/100+A;//in RS
disp(AE2,"The annual equivalent cost(AE(12%)) of this alternative in RS. : ");
disp("Since, The equivalent cost of new machine is less than that of present machine, it is suggested that the present machine be replaced with the new machine.");