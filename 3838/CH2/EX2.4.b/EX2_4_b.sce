//Example 2.4.a
//Energy of the signal x(t)=(exp(-2*a*t)).u(t)
clc;
P=integrate('1^(2)','t',(-100),100)/(2*100)//power of given signal t=100
disp(P)
disp('AS POWER OF THE GIVEN SIGNAL IS FINITE HENCE THE GIVEN SIGNAL IS POWER SIGNAL');
