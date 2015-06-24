//Exa 6.7
clc;
clear;
close;
//Alternative 1 : Purchase car for cash
disp("Alternative 1 : Purchase car for cash");
Pprice=390000;//in Rs
n=3;//in years
n=n*12;//in months
S=120000;//in Rs
i=12;//in % nominal rate(Compounded anually)
i=i/12;//in % compounded monthly
//Formula : (A/F,i,n) : (i/100)/(((1+i/100)^n)-1)
//Formula : (A/P,i,n) : ((i/100)*(1+i/100)^n)/(((1+i/100)^n)-1)
ME1=Pprice*((i/100)*(1+i/100)^n)/(((1+i/100)^n)-1)-S*(i/100)/(((1+i/100)^n)-1);//in RS
disp(ME1,"The Monthly equivalent cost for this alternative in RS. : ");

//Alternative 2 : Use of car under lease
disp("Alternative 2 : Use of car under lease");
LeaseAmount=10500;//in Rs
MonthlyEquiCost=LeaseAmount;//in Rs.
disp(MonthlyEquiCost,"The Monthly equivalent cost for this alternative in RS. : ");
disp("The monthly equivalent cost of alternative 1 is less than that of alternative 2. hence the salesman should purchase the car for cash.")