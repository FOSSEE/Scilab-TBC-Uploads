clc
clear
//Input data
af=15//Air fuel ratio
dp=753//Density of petrol in kg/m^3
da=1.28//Density of air in kg/m^3
C=[0.84,0.7]//Coefficient of discharge for air and fuel respectively

//Calculations
A=1/(af*(C(2)/C(1))*sqrt(dp/da))//Ratio of areas
d=sqrt(A)//Ratio of diamter of jet to diameter of venturi
x=(1/d)//Reverse of ratio

//Output
printf('The ratio of diameter of jet to diameter of venturi is 1 : %3.1f',x)
