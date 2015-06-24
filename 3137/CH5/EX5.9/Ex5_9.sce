//Initilization of variables
F1=1000 //lb
F2=1200 //lb
F3=2000 //lb
x1=1 //ft
x2=7 //ft
x4=2 //ft
x3=6 //ft
//Calculation
//Equilibrium equations
Rn=(F3*(x1+x2+x3)+F2*(x1+x2)+F1*x1)/(x1+x3+x2+x4)//Moment about point M
Rm=(F1*(x2+x3+x4)+F2*(x3+x4)+F3*x4)/(x1+x2+x3+x4)//Moment about point N
//Result
clc
printf('The reaction at M is %flb and reaction at N is %flb',Rm,Rn)
//Decimal Accuracy causes discrepancy in answers between computation and textbook
