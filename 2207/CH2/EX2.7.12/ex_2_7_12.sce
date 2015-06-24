//Example 2.7.12;//pulse width
clc;
clear;
close;
//given data :
format('v',5)
v=200;//in volts
il=100;//latch current in mA
l=0.2;//inductance in henry
dit=v/l;//in amp/sec
dt=(il*10^-3)/dit;//in seconds
disp("part (a)")
disp(dt*10^6,"minimum pulse width required to turn on the SCR is in micro seconds")
r=20;//in ohms
x=(il*10^-3*r)/v;//
t=(log(1-x))*(-l/r);//
disp("part (b)")
disp(round(t*10^6),"minimum pulse width in micro seconds is")
//part b answer is calculated wrong in the textbook
