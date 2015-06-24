clc
//initialisation of variables
h=100//ft^3
t=15//degree C
p=120//lb/in^2
gama=1.3//in
t1=15//Degree C
M=[(144*t*h*2.6)/(0.3)*(1.271-1)]//ft lb
//CALCULATIONS
V=sqrt(p/t)//ft lb
//RESULTS
printf('Compare the values of the two cylinders=% f ft lb',V)
