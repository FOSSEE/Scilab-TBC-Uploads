//Initilization of variables
D=[6/sqrt(40) -4/sqrt(20);2/sqrt(40) 2/sqrt(20)]
B=[0;25] //lb
//Calculations
X=inv(D)*B
//Result
clc
printf('The tension in  cable AB is %flb and the tension in cable AC is %f lb',X(2),X(1))
