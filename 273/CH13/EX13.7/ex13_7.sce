clc;clear;
//Example 13.7
//calculation of uncertainty in position

//1)given values

h=6.626*10^-34;//Planck's constant in Js
v1=220;//velocity of e in m/s
m=9.1*10^-31;//mass of e in kg
A=0.065/100;//accuracy


//1)calculation
v2=v1*A;//uncertainty in speed
x1=h/(2*%pi*m*v2);//
disp(x1,'uncertainty in position of e (in m)is');


//2)given values
m1=150/1000;//mass of object in kg
x2=h/(2*%pi*m1*v2);
disp(x2,'uncertainty in position of baseball(in m) is');