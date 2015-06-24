//Example 10.7.2 Page 386
//Non-Linear Dynamics and Chaos, First Indian Edition Print 2007
//Steven H. Strogatz
clear;
clear;
clc;
close;

x=poly(0,"x");
f = (x^2)+4*x-2;                    //Defining Polynomial--> x(dot)=x^2 -1. Let this be f(x)
disp("Fixed Points are :")
y = roots(f);

// -2+sqrt(6)=0.4494897

// As seen earlier period 2 cycle occours at r=3.

//Hence,

r2=y(1)+3


//End of Example.