clear;
clc;

// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 2
// Heat Conduction in Solids

// Example 2.8
// Page 47
printf("Example 2.8, Page 47 \n\n")

// The bar will have two dimensional variation in temperature
// the differential equation is subject to boundary conditions
x1 = 0; // [cm]
Tx1 = 30; // [C]
x2 = 5; // [cm]
Tx2 = 30; // [C]
y1 = 0; // [cm]
Ty1 = 30; // [C]
y2 = 10; // [cm]
Ty2 = 130; // [C]
// substituting theta = T-30 and using eqn 2.6.11
// putting x = 2.5cm and y = 5cm in infinite summation series


n = 1;
x1 = (1-cos(%pi*n))/(sinh(2*%pi*n))*sin(n^%pi/2)*sinh(n*%pi);

n = 3;
x3 = (1-cos(%pi*n))/(sinh(2*%pi*n))*sin(n^%pi/2)*sinh(n*%pi);

n = 5;
x5 = (1-cos(%pi*n))/(sinh(2*%pi*n))*sin(n^%pi/2)*sinh(n*%pi);

x = x1+x3+x5;

T = x*100+30;
printf("Steady state temperature = %f C",T);

