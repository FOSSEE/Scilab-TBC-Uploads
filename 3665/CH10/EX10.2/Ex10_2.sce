clc//
//
//

//Variable declaration
epsilon_r=4.94;
n2=2.69;

//Calculation
x=(epsilon_r-1)/(epsilon_r+2);
y=(n2-1)/(n2+2);
r=(x/y)-1;       //ratio betwen electronic and ionic polarizability

//Result
printf("\n ratio betwen electronic and ionic polarizability is %0.3f ",1/r)
