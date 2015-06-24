clc;clear;
//Example 1.10

//constants used
g=9.81;//acceleration due to gravity in m/s^2;

//given values
p=1040;
h1=0.8;
H=4;
x0=0;
x1=4;// x0 & x1 are limits of integration

//calculation
P1=p*g*h1/1000;//standard  pressure determination formula
P2=integrate('p*g*(sqrt(1+(tan(3.14*z/4/H)^2)))','z',x0,x1);//integrant
P2=P2/1000;//converting into kPa
P=P1+P2;
P=ceil(P);//roundingoff to match answer
disp(P,'the gage pressure at the bottom of gradient zone in kPa is')
