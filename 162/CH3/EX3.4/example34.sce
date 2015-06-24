//Example 3.4
//Find system function and output of the system
clc;
syms t;
h=%e^(-3*t);
H=laplace(h,t,'jw');
disp(H,'SYSTEM FUNCTION=');
x=%e^(-2*t);
X=laplace(x,t,'jw');
Y=H*X;
y=ilaplace(Y,'jw',t);
disp(y,'OUTPUT OF THE SYSTEM FOR THE GIVEN INPUT IS=');