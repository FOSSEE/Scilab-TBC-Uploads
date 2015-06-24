//Example 3_7
clc;
clear;
close;
format('v',6);
//given data :
L=0.5;//H
C=100;//micro F
V=230;//V
f=50;//Hz
R=25;//ohm
Vm=sqrt(2)*V;//V
omega=2*%pi*f;//rad/s
disp("Voltage equation")
disp("V="+string(Vm)+"*sin"+string(omega)+"*t");
XL=omega*L;//ohm
XC=1/omega/(C*10^-6);///ohm
disp("Current through the resistor will be ");
disp("i="+string(Vm/R)+"*sin("+string(2*%pi*f)+"*t)");
disp("Current through the inductor will be ");
disp("i="+string(Vm/XL)+"*sin("+string(2*%pi*f)+"*t-90)");
disp("Current through the capacitor will be ");
disp("i="+string(Vm/XC)+"*sin("+string(2*%pi*f)+"*t+90)");
//Answer is not accurate in the book.
