//Example 3_6
clc;
clear;
close;
format('v',5);
//given data :
L=0.5;//H
V=230;//V
f=50;//Hz
Vm=sqrt(2)*V;//V
XL=2*%pi*f*L;//ohm
I=V/XL;//A
Im=sqrt(2)*I;//A
disp("Equations are :  ");
disp("V="+string(Vm)+"*sin"+string(2*%pi*f)+"*t");
disp("i="+string(Im)+"*sin("+string(2*%pi*f)+"*t-%pi/2)");
//Answer is not accurate in the book.
