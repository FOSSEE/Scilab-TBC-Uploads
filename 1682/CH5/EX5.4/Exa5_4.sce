//Exa 5.4
clc;
clear;
close;
//Alternative 1 :
disp("Alternative 1 :");
P=8000000;//in Rs
A=800000;//in Rs
i=20;//in % per annum
n=12;//in years
Salvage=500000;//in Rs
//Formula : (1+i/100)^n
//Formula : (F/A,i,n) : (((1+i/100)^n)-1)/(i/100)
FW1=P*(1+i/100)^n+A*(((1+i/100)^n)-1)/(i/100)-Salvage;//in RS
disp(FW1,"The future worth for this alternative in RS. : ");

//Alternative 2 :
disp("Alternative 2 :");
P=7000000;//in Rs
A=900000;//in Rs
i=20;//in % per annum
n=12;//in years
Salvage=400000;//in Rs
//Formula : (1+i/100)^n
//Formula : (F/A,i,n) : (((1+i/100)^n)-1)/(i/100)
FW2=P*(1+i/100)^n+A*(((1+i/100)^n)-1)/(i/100)-Salvage;//in RS
disp(FW2,"The future worth for this alternative in RS. : ");

//Alternative 3 :
disp("Alternative 3 :");
P=9000000;//in Rs
A=850000;//in Rs
i=20;//in % per annum
n=12;//in years
Salvage=700000;//in Rs
//Formula : (1+i/100)^n
//Formula : (F/A,i,n) : (((1+i/100)^n)-1)/(i/100)
FW3=P*(1+i/100)^n+A*(((1+i/100)^n)-1)/(i/100)-Salvage;//in RS
disp(FW3,"The future worth for this alternative in RS. : ");
disp("The future worth of alternative 2 is less than that of other two alternatives. Thus, Ms. Krishna castings should buy the annealing furnace from manufacturer 2.");
//Note : Calculation in the book is not accurate.