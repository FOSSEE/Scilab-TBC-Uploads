
clc
clear
//Input data
L=200//The total load supplied by the plants in MW
//The incremental fuel costs for generating units a and b of power plant are given by
//dFa/dPa=0.065Pa+25
//dFb/dPb=0.08Pa+20

//Calculations
//Solving two equations
//Pa+Pb=200
//0.065Pa+25=0.08Pb+20
A=[1 1
   0.065 -0.08]//Coefficient matrix
B=[L
   (20-25)]//Constant matrix
X=inv(A)*B//Variable matrix
P=100//If load is shared equally then Pa=Pb=100MW
a=(((0.065*P^2)/2)+(25*P))-(((0.065*X(1)^2)/2)+(25*X(1)))//increase in fuel cost for unit a in Rs. per hour
b=(((0.08*P^2)/2)+(20*P))-(((0.08*X(2)^2)/2)+(20*X(2)))//increase in fuel cost for unit a in Rs. per hour
x=a+b//Net increase in fuel cost due to departure from economic distribution of load in Rs. per hour

//Output
printf('(a)The economic loading of two units when the total load supplied by the power plants is 200 MW are %3.2f MW and %3.2f MW\n(b)The loss in fuel cost per hour if the load is equally shared by both units is Rs.%3.2f per hour',X(1),X(2),x)
