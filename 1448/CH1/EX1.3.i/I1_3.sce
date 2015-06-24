clc
//Initialzation of variables
T1=298//K
T2=273//K
//Calculations
factor=sqrt(T2/T1)
percentage=(1-factor)*100
//Results
printf('Percentage loss of speed of air molecules = %.2f',percentage)
