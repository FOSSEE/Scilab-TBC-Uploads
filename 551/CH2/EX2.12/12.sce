clc
Ice_point=0;
Steam_point=100;
// t=a*log(p)+b
// from given conditions equations formed are
// a*log(1.5)+b=0
// a*log(7.5)+b=100
// solving equations
P=[log(1.5),1;log(7.5),1];
Q=[0;100];
X=inv(P)*Q;
a=X(1,1);
b=X(2,1);
p=3.5;
t=a*log(p)+b;
disp("The value of temperature is given by")
disp(t)
disp("°C")