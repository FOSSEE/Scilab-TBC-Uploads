//Example 2.4.c
clc;
a=2;
P=(integrate('(3*cos(0.1*(%pi)*t))^(2)','t',-100,100)/(2*100))//power of given signal t=100
disp(P)
disp('AS POWER OF THE GIVEN SIGNAL IS FINITE HENCE THE GIVEN SIGNAL IS POWER SIGNAL');
