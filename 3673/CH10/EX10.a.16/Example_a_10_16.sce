//Example_a_10_16 page no:477
clc;
t=2;
V1=(0.5*((t*(-2)*exp(-2*t))+exp(-2*t)))+(0.2*(((t^2)*(-1)*exp(-t))+(2*(t)*exp(-t))));
disp(V1,"the value of V1(t) is (in V)");//the value of V1 is wrong in text book, correct calculation is done here
V2=-0.125*((2*2*exp(-2))-(2^2*exp(-2)))+(0.2*(exp(-2*2)-(2*2*exp(-2*2))));
disp(V2,"the value of V2(t) is (in V)");
//calculation of V1 is wrong in textbook
