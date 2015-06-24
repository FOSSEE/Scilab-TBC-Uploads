clc
clear
//Initialization of variables
Y=0.06
X=0.0012
P=2.53 //Mpa
//calculations
y=Y/(1+Y)
x=X/(1+X)
H=y*P/x
//results
printf("Henrys law constant = %.2f Mpa",H)
