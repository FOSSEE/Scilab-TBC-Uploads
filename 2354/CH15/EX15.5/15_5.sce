//example 15.5
clc; funcprot(0);
// Initialization of Variable
k=1.2;
epsilon=0.8;//emmisivity
h=20;
Ts=373;
Tsur=298;
sigma=5.67e-8;
L=.15;//length
a=h*(Ts-Tsur)+epsilon*sigma*(Ts^4-Tsur^4);
T1=Ts+L/k*a;
disp(T1,"inner wall temperature in K");
disp(T1-273,"inner wall temperature in K")
clear()
