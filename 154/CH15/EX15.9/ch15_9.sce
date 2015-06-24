clc
disp("Example 15.9")
printf("\n")

s=%s;
printf("Given")
disp("L1=0.2H L2=0.1H")
disp("M=0.1H R=10ohm")
disp("v1=u(t) a unit step function")
L1=0.2;L2=0.1
M=0.1;R=10;
v1=1;
w=100;
//Let Input impedance be Z1 and can be calculated as
//From the equations in 15.10
disp("Z1(s)=L1*s-((M*s)^2)/(R+L2*s)")
Z1=L1*s-(((M*s)^2)/(R+L2*s))
//Proper rearranging of co-efficients
Num=Z1('num')/0.01
Den=Z1('den')*100

disp(Num/Den,"Z1(s)")
Y1=1/Z1
disp(Den/Num,"Y1(s)")

//As the input is unit step function the value is 1V for t>0
//In exponential form the value is represented as exp(s*t) with s=0 as the pole of Y1(s)

//Therefore forced response
k=1/L1;
printf("Forced response i1,f=(%d*t) (A)\n",k);


