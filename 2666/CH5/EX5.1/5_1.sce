clc
//initialisation of variables
h=1000//Btu
t1=70//F
t2=740//F
p=530//Btu
p1=1200//Btu
//CALCULATIONS
Q=h*(1-p/p1)//Btu
Q1=h*(p/p1)//Btu
//RESULTS
printf('the available energy and the unavailable energy equals=% f Btu',Q1)
