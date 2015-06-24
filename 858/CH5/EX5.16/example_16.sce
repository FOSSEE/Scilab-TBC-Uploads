clc
clear 
printf("example 5.16 page number 208\n\n")

//to find the amount of liquid and vapor leaving and outlet concentration
//we have two linear equations in L and V so we will write them in form of a matrix and then solve using principles of linear algebra

b1 = 6000*125.79+3187.56*2691.5-3187.56*461.30;    //data from previous problem
b2 = 6000;
A = [419.04 2676.1;1 1];

b = [b1;b2];
x = A\b;
L = x(1);
V = x(2);

printf("L = %f kg/hr\nV = %f kg/hr",L,V)

F = 6000   //in kg/hr
xF = 0.01;
xL = F*xF/L;
printf("\n\npercentage increase in outlet concentration = %f",xL*100)
