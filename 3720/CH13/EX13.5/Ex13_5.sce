//Example 13_5
clc;clear;funcprot(0);
// Given values
v=2;// m^3/s
S_0=0.001;
a=1;// m^1/3
//Properties
n=0.016;

//Calculation
//(a)
b=((2*n*v*4^(2/3))/(a*sqrt(S_0)))^(3/8); //The channel width in  m
y=b/2;// The flow height in m
printf('(a)The channel width,b=%0.2f m\n',b);
printf('The flow height,y=%0.2f m\n',y);
//(b)
b_1=((n*v)/((0.75*sqrt(3))*(sqrt(3)/4)^(2/3)*(1*sqrt(0.001))))^(3/8);
p=3*b;// m
y_1=(sqrt(3)/2)*b_1;// m
theta=60;// degree
printf('(b)The channel width,b=%0.2f m\n',b_1);
printf('The flow height,y=%0.3f m\n',y_1);
printf('The trapezoidal angle,theta=%0.0f degree\n',theta);
// The answer vary due to round off error
